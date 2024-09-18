<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Supports\Breadcrumb;
use Botble\Ecommerce\Forms\SpecificationTableForm;
use Botble\Ecommerce\Http\Requests\SpecificationTableRequest;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\SpecificationTable;
use Botble\Ecommerce\Tables\SpecificationTableTable;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class SpecificationTableController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/ecommerce::product-specification.specification_tables.title'), route('ecommerce.specification-tables.index'));
    }

    public function index(SpecificationTableTable $table, Request $request)
    {
        if ($request->isMethod('GET') && $request->ajax()) {
            $specificationTable = SpecificationTable::query()
                ->with('groups.specificationAttributes')
                ->findOrFail($request->query('table'));

            $product = null;

            if ($request->query('product')) {
                $product = Product::query()
                    ->with('specificationAttributes')
                    ->findOrFail($request->query('product'));
            }

            return $this
                ->httpResponse()
                ->setData(view('plugins/ecommerce::products.partials.specification-table.table', compact('specificationTable', 'product'))->render());
        }

        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_tables.title'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_tables.create.title'));

        return SpecificationTableForm::create()->renderForm();
    }

    public function store(SpecificationTableRequest $request)
    {
        $form = SpecificationTableForm::create()->setRequest($request)->onlyValidatedData();

        $form->saving(function (SpecificationTableForm $form) {
            $form->save();

            /** @var SpecificationTable $model */
            $model = $form->getModel();

            $model->groups()->sync(Arr::get($form->getRequest(), 'groups', []));
        });

        return $this
            ->httpResponse()
            ->withCreatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-tables.index')
            ->setNextRoute('ecommerce.specification-tables.edit', $form->getModel());
    }

    public function edit(SpecificationTable $table)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_tables.edit.title', [
            'name' => $table->name,
        ]));

        return SpecificationTableForm::createFromModel($table)->renderForm();
    }

    public function update(SpecificationTableRequest $request, SpecificationTable $table)
    {
        $form = SpecificationTableForm::createFromModel($table)->setRequest($request)->onlyValidatedData();

        $form->saving(function (SpecificationTableForm $form) {
            $form->save();

            /** @var SpecificationTable $model */
            $model = $form->getModel();

            $groups = Arr::get($form->getRequest(), 'groups', []);
            $orders = Arr::get($form->getRequest(), 'group_orders', []);

            $data = [];
            foreach ($groups as $index => $groupId) {
                $data[$groupId] = ['order' => $orders[$groupId] ?? $index];
            }

            $model->groups()->sync($data);
        });

        return $this
            ->httpResponse()
            ->withUpdatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-tables.index')
            ->setNextRoute('ecommerce.specification-tables.edit', $form->getModel());
    }

    public function destroy(SpecificationTable $table)
    {
        return DeleteResourceAction::make($table);
    }
}
