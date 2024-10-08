<?php

namespace Botble\Marketplace\Listeners;

use Botble\Base\Events\AdminNotificationEvent;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Facades\EmailHandler;
use Botble\Base\Supports\AdminNotificationItem;
use Botble\Ecommerce\Models\Customer;
use Botble\Marketplace\Events\NewVendorRegistered;
use Botble\Marketplace\Facades\MarketplaceHelper;
use Botble\Marketplace\Models\Store;
use Botble\Marketplace\Models\VendorInfo;
use Botble\Slug\Facades\SlugHelper;
use Botble\Slug\Models\Slug;
use Carbon\Carbon;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class SaveVendorInformationListener
{
    public function __construct(protected Request $request)
    {
    }

    public function handle(Registered $event): void
    {
        $customer = $event->user;

        if (! $customer instanceof Customer) {
            return;
        }

        if ($customer->is_vendor || ! $this->request->input('is_vendor')) {
            return;
        }

        $store = Store::query()
            ->where('customer_id', $customer->getAuthIdentifier())
            ->first();

        if (! $store) {
            $store = Store::query()->create([
                'name' => BaseHelper::clean($this->request->input('shop_name')),
                'phone' => BaseHelper::clean($this->request->input('shop_phone')),
                'email' => BaseHelper::clean($this->request->input('email')),
                'customer_id' => $customer->getAuthIdentifier(),
            ]);
        }

        if (! $store->slug) {
            Slug::query()->create([
                'reference_type' => Store::class,
                'reference_id' => $store->id,
                'key' => Str::slug($this->request->input('shop_url')),
                'prefix' => SlugHelper::getPrefix(Store::class),
            ]);
        }

        $store->refresh();

        $storage = Storage::disk('local');

        if (! $storage->exists("marketplace/$store->slug")) {
            $storage->makeDirectory("marketplace/$store->slug");
        }

        if ($certificateFile = $this->request->file('certificate_file')) {
            $certificateFilePath = $storage->putFileAs("marketplace/$store->slug", $certificateFile, 'certificate.' . $certificateFile->getClientOriginalExtension());
            $store->certificate_file = $certificateFilePath;
        }

        if ($governmentIdFile = $this->request->file('government_id_file')) {
            $governmentIdFilePath = $storage->putFileAs("marketplace/$store->slug", $governmentIdFile, 'government_id.' . $governmentIdFile->getClientOriginalExtension());
            $store->government_id_file = $governmentIdFilePath;
        }

        if ($store->isDirty()) {
            $store->save();
        }

        $customer->is_vendor = true;

        if (MarketplaceHelper::getSetting('verify_vendor', 1)) {
            $mailer = EmailHandler::setModule(MARKETPLACE_MODULE_SCREEN_NAME);
            if ($mailer->templateEnabled('verify_vendor')) {
                EmailHandler::setModule(MARKETPLACE_MODULE_SCREEN_NAME)
                    ->setVariableValues([
                        'customer_name' => $customer->name,
                        'customer_email' => $customer->email,
                        'customer_phone' => $customer->phone,
                        'store_name' => $store->name,
                        'store_phone' => $store->phone,
                        'store_address' => $store->address,
                        'store_link' => route('marketplace.unverified-vendors.view', $customer->getKey()),
                        'store_url' => route('marketplace.unverified-vendors.view', $customer->getKey()),
                    ]);
                $mailer->sendUsingTemplate('verify_vendor', get_admin_email()->first());
            }

            event(new AdminNotificationEvent(
                AdminNotificationItem::make()
                    ->title(trans('plugins/marketplace::unverified-vendor.new_vendor_notifications.new_vendor'))
                    ->description(trans('plugins/marketplace::unverified-vendor.new_vendor_notifications.description', [
                        'customer' => $customer->name,
                    ]))
                    ->action(trans('plugins/marketplace::unverified-vendor.new_vendor_notifications.view'), route('marketplace.unverified-vendors.view', $customer->id))
                    ->permission('marketplace.unverified-vendors.edit')
            ));
        } else {
            $customer->vendor_verified_at = Carbon::now();
        }

        if (! $customer->vendorInfo->id) {
            VendorInfo::query()->create([
                'customer_id' => $customer->getKey(),
            ]);
        }

        $customer->save();

        event(new NewVendorRegistered($customer));
    }
}
