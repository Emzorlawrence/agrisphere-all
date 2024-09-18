<?php

return [
    'save_settings' => 'Save setting',
    'general' => [
        'name' => 'General',
        'description' => 'View and update your general settings',
    ],
    'currency' => [
        'name' => 'Currencies',
        'description' => 'View and update currency settings',
        'currency_setting_description' => 'View and update currencies using on website',
        'form' => [
            'enable_auto_detect_visitor_currency' => 'Enable auto-detect visitor currency',
            'add_space_between_price_and_currency' => 'Add a space between price and currency',
            'thousands_separator' => 'Thousands separator',
            'decimal_separator' => 'Decimal separator',
            'separator_period' => 'Period (.)',
            'separator_comma' => 'Comma (,)',
            'separator_space' => 'Space ( )',
            'api_key' => 'API exchange rates key',
            'api_key_helper' => 'Get exchange rate API key on :link',
            'update_currency_rates' => 'Update currency rates',
            'use_exchange_rate_from_api' => 'Use exchange rate from API',
            'clear_cache_rates' => 'Clear cache rates',
            'auto_detect_visitor_currency_description' => 'It detects visitor currency based on browser language. It will override default currency selection.',
            'exchange_rate' => [
                'api_provider' => 'API provider',
                'select' => '-- Select --',
                'none' => 'None',
                'provider' => [
                    'api_layer' => 'API Layer',
                    'open_exchange_rate' => 'Open Exchange Rates',
                ],
                'open_exchange_app_id' => 'Open Exchange Rates App ID',
            ],
            'default_currency_warning' => 'For the default currency, the exchange rate must be 1.',
        ],
    ],
    'product' => [
        'name' => 'Products',
        'description' => 'View and update your products settings',
        'product_settings' => 'Product settings',
        'product_settings_description' => 'Configure rules for product',
        'form' => [
            'show_number_of_products' => 'Show number of products in the product single',
            'show_out_of_stock_products' => 'Show out of stock products',
            'how_to_display_product_variation_images' => 'How to display product variation images',
            'only_variation_images' => 'Only variation images',
            'variation_images_and_main_product_images' => 'Variation images and main product images',
            'enable_product_options' => 'Enable product options',
            'is_enabled_cross_sale_products' => 'Enable cross sale products',
            'is_enabled_related_products' => 'Enable related products',
            'auto_generate_product_sku' => 'Auto generate SKU when creating product',
            'product_sku_format' => 'SKU format',
            'product_sku_format_helper' => 'You can use %s (1 string character) or %d (1 digit) in the format to generate random string. Ex: SKU-%s%s%s-HN-%d%d%d',
            'enable_product_specification' => 'Enable product specification',
            'enable_product_specification_help' => 'If enabled, the product specification table will be displayed on the product detail page.',
        ],
    ],
    'product_search' => [
        'name' => 'Product Search',
        'description' => 'View and update product search settings',
        'product_search_settings' => 'Product search',
        'product_search_settings_description' => 'Configure rules for product search',
        'form' => [
            'search_for_an_exact_phrase' => 'Search for an exact phrase',
            'search_products_by' => 'Search products by:',
            'enable_filter_products_by_brands' => 'Enable filter products by brands',
            'enable_filter_products_by_tags' => 'Enable filter products by tags',
            'enable_filter_products_by_attributes' => 'Enable filter products by attributes',
        ],
    ],
    'digital_product' => [
        'name' => 'Digital Products',
        'description' => 'View and update digital products settings',
        'digital_products_settings' => 'Digital products',
        'digital_products_settings_description' => 'Configure rules for digital products',
        'form' => [
            'enable_support_digital_product' => 'Is it enabled to support digital products',
            'allow_guest_checkout_for_digital_products' => 'Allow guest checkout for digital products',
            'disable_physical_product' => 'Disable physical product',
        ],
    ],
    'product_review' => [
        'name' => 'Product Reviews',
        'description' => 'View and update your product reviews settings',
        'form' => [
            'enable_review' => 'Enable review',
            'review' => [
                'max_file_size' => 'Review max file size (MB)',
                'max_file_number' => 'Review max file number',
            ],
            'only_allow_customers_purchased_to_review' => 'Only customers who have purchased the product can review the product',
            'review_need_to_be_approved' => 'Review need to be approved before showing on the product page',
            'show_customer_full_name' => 'Show customer full name',
            'show_customer_full_name_help' => 'If it is unchecked, the name of the reviewing customer will be hidden and replaced with asterisks (***)',
        ],
    ],
    'shopping' => [
        'name' => 'Shopping',
        'description' => 'View and update your shopping settings',
        'general_setting' => 'General settings',
        'return_settings' => 'Return settings',
        'return_settings_description' => 'Configure rules for return settings',
        'form' => [
            'enable_cart' => 'Enable shopping cart',
            'enable_wishlist' => 'Enable wishlist',
            'enable_wishlist_sharing' => 'Enable wishlist sharing',
            'shared_wishlist_lifetime' => 'Shared wishlist lifetime (days)',
            'shared_wishlist_lifetime_helper' => 'The lifetime of the shared wishlist in days. After this time, the shared wishlist will be deleted.',
            'enable_compare' => 'Enable compare',
            'enable_order_tracking' => 'Enable order tracking',
            'enable_quick_buy_button' => 'Enable quick buy button',
            'enable_order_auto_confirmed' => 'Auto confirm order',
            'quick_buy_target' => 'Quick buy target page',
            'checkout_page' => 'Checkout page',
            'cart_page' => 'Cart page',
            'cart_destroy_on_logout' => 'Destroy cart on logout',
        ],
    ],
    'checkout' => [
        'name' => 'Checkout',
        'panel_description' => 'View and update checkout settings',
        'description' => 'Configure rules for checkout settings',
        'form' => [
            'display_bank_info_at_the_checkout_success_page' => 'Display bank info at the checkout success page',
            'mandatory_form_fields_at_checkout' => 'Mandatory fields at the checkout page:',
            'hide_form_fields_at_checkout' => 'Hide customer fields at checkout page:',
            'load_countries_states_cities_from_location_plugin' => 'Load countries, states, cities from plugin location',
            'load_countries_states_cities_from_location_plugin_placeholder' => 'After changing this option, you need to update all addresses again. You should set it once.',
            'load_countries_states_cities_from_location_plugin_placeholder_2' => 'Then you need to go to Tools -> Import/Export Data to import location data.',
            'minimum_order_amount' => 'Minimum order amount to place an order (:currency).',
            'zip_code_enabled' => 'Enable zipcode',
            'billing_address_enabled' => 'Enable billing address',
            'display_tax_fields_at_checkout_page' => 'Display tax information fields at the checkout page',
            'use_city_field_as_field_text' => 'Use city field as a free text field',
            'available_countries' => 'Available countries',
            'all' => 'All',
            'all_helper_text' => 'If you uncheck all countries, it will apply for all countries.',
            'enable_guest_checkout' => 'Enable guest checkout',
            'recently_viewed' => [
                'enable' => 'Enable customer recently viewed products',
                'max' => 'Maximum number of customer recently viewed products',
                'max_helper' => 'If you set 0, it will save all products.',
            ],
            'minimum_order_quantity' => 'Minimum order quantity',
            'minimum_order_quantity_helper' => 'Minimum quantity to place an order. Let it is 0 if you do not want to set it.',
            'maximum_order_quantity' => 'Maximum order quantity',
            'maximum_order_quantity_helper' => 'Maximum quantity to place an order. Let it is 0 if you do not want to set it.',
            'default_country_at_checkout_page' => 'Default country at the checkout page',
            'default_country_at_checkout_page_placeholder' => 'Select a country',
            'default_country_at_checkout_page_help' => 'If you select a country, the country will be selected by default at the checkout page.',
            'checkout_product_quantity_editable' => 'Allow customers to change product quantity at the checkout page',
            'checkout_apply_discount_before_taxes' => 'Apply discount before taxes',
            'checkout_apply_discount_before_taxes_help' => 'If it is enabled, the discount will be applied to the total amount before taxes are calculated.',
        ],
    ],
    'return' => [
        'name' => 'Return',
        'description' => 'Configure rules for return settings',
        'panel_description' => 'View and update return settings',
        'form' => [
            'is_enabled_order_return' => 'Is enabled order return',
            'allow_partial_return' => 'Allow partial return',
            'allow_partial_return_description' => 'Customer can return a few products, do not need to return all products in an order.',
            'returnable_days' => 'Returnable days',
            'return_settings_helper' => 'Number of days a customer can request a return after the order is completed.',
        ],
    ],
    'invoice' => [
        'name' => 'Invoices',
        'description' => 'View and update your invoices settings',
        'company_settings' => 'Company settings',
        'company_settings_description' => 'Settings Company information for invoicing',
        'form' => [
            'company_name' => 'Company name',
            'company_address' => 'Company address',
            'company_zipcode' => 'Company zipcode',
            'company_email' => 'Company email',
            'company_phone' => 'Company phone',
            'company_logo' => 'Company logo',
            'company_tax_id' => 'Company tax ID',
            'invoice_code_prefix' => 'Invoice code prefix',
            'using_custom_font_for_invoice' => 'Using custom font for invoice',
            'invoice_font_family' => 'Invoice font family (Only work for Latin language)',
            'enable_invoice_stamp' => 'Enable invoice stamp',
            'add_language_support' => 'Add language support',
            'only_latin_languages' => 'Only Latin languages',
            'disable_order_invoice_until_order_confirmed' => 'Disable order invoice until order confirmed',
            'date_format' => 'Date format',
        ],
    ],
    'tax' => [
        'name' => 'Taxes',
        'description' => 'View and update your taxes settings',
        'tax_setting' => 'Tax settings',
        'tax_setting_description' => 'Configure tax settings',
        'tax_management' => 'Taxes management',
        'tax_management_description' => 'View and manage your taxes',
        'form' => [
            'enable_tax' => 'Enable tax',
            'display_company_invoice_information_fields_at_checkout_page' => 'Display company invoice information fields at the checkout page',
            'display_company_invoice_information_fields_at_checkout_page_helper' => 'If it is enabled, the company invoice information fields will be displayed at the checkout page. It is required to fill in the company invoice information fields.',
            'default_tax_rate' => 'Default tax rate',
            'default_tax_rate_description' => 'Important: it will be applied if no tax selected in product.',
            'select_tax' => '-- Select --',
            'display_product_price_including_taxes' => 'Display product price including taxes',
        ],
    ],
    'customer' => [
        'name' => 'Customers',
        'description' => 'View and update your customers settings',
        'customer_setting' => 'Customer settings',
        'customer_setting_description' => 'Configure customer settings',
        'form' => [
            'verify_customer_email' => 'Verify customer’s email',
            'verify_customer_email_helper' => "When it's enabled, a verification link will be sent to customer's email, customers need to click on this link to verify their email before they can log in.",
            'login_using_phone' => 'Sign in with phone number instead of email',
            'login_option' => 'Login option',
            'login_with_email' => 'Login with email',
            'login_with_phone' => 'Login with phone',
            'login_with_email_or_phone' => 'Login with email or phone',
            'enabled_customer_account_deletion' => 'Enable customer account deletion',
            'enabled_customer_account_deletion_helper' => 'When it is enabled, customers can delete their account in customer dashboard → Account settings.',
            'enabled_customer_dob_field' => 'Enable customer date of birth field',
            'enabled_customer_dob_field_helper' => 'When it is enabled, customers can enter their date of birth in customer dashboard → Account settings.',
            'make_customer_phone_number_required' => 'Make customer phone number required',
            'make_customer_phone_number_required_helper' => 'When enabled, customers must enter their phone number during registration. It is always required for customers logging in with a phone number.',
        ],
    ],
    'shipping' => [
        'name' => 'Shipping',
        'description' => 'View and update shipping settings',
        'shipping_rule' => 'Shipping rules',
        'shipping_rule_description' => 'Configure rules to calculate shipping fee',
        'shipping_setting' => 'Shipping settings',
        'shipping_setting_description' => 'Configure shipping settings',
        'form' => [
            'hide_other_shipping_options_if_it_has_free_shipping' => 'Hide other shipping options if it has free shipping in the list',
        ],
    ],
    'webhook' => [
        'name' => 'Webhook',
        'description' => 'Configure webhook settings',
        'webhook_setting' => 'Webhook',
        'webhook_setting_description' => 'Send webhook when order placed',
        'form' => [
            'order_placed_webhook_url' => 'Order placed webhook URL (method: POST)',
            'order_placed_webhook_url_placeholder' => 'https://...',
            'order_placed_webhook_url_helper' => 'To receive notifications when an order is placed, you can set up an external webhook URL. If you have an external webhook URL, you can enter this URL, or just leave it empty.',
        ],
    ],
    'store_locator' => [
        'name' => 'Store locators',
        'description' => 'View and update the lists of your chains',
        'store_locator_description' => 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.',
        'form' => [
            'change_primary_store' => 'change default store locator',
            'add_location' => 'Add location',
            'edit_location' => 'Edit location',
            'delete_location' => 'Delete location',
            'delete_location_confirmation' => 'Are you sure you want to delete this location? This action cannot be undo.',
            'change_primary_location' => 'Change primary location',
            'save_location' => 'Save location',
            'add_new' => 'Add new',
        ],
    ],
    'tracking' => [
        'name' => 'Tracking',
        'description' => 'View and update tracking settings',
        'manage_tracking' => 'Manage tracking',
        'manage_tracking_description' => 'Manage tracking: UTM, Facebook, Google Tag Manager...',
        'form' => [
            'enable_facebook_pixel' => 'Enable Facebook Pixel (Meta Pixel)',
            'facebook_pixel_helper' => 'Go to https://developers.facebook.com/docs/meta-pixel to create Facebook Pixel.',
            'facebook_pixel_id' => 'Facebook Pixel ID',
            'enable_google_tag_manager_tracking_events' => 'Enable Google Tag Manager Tracking Events',
            'google_tag_manager_tracking_info' => 'You need to add Google Tag Manager to tracking your website, please go to Admin → Settings → :website_tracking.',
        ],
    ],
    'marketplace' => [
        'name' => 'Marketplace',
        'description' => 'View and update marketplace settings',
    ],
    'standard_and_format' => [
        'name' => 'Standard & Format',
        'panel_description' => 'View and update standard & format settings',
        'description' => 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.',
        'form' => [
            'change_order_format' => 'Edit order code format (optional)',
            'change_order_format_description' => 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example "DH-: number" or ": number-A"',
            'start_with' => 'Start with',
            'end_with' => 'End with',
            'order_will_be_shown' => 'Your order code will be shown',
            'weight_unit' => 'Unit of weight',
            'height_unit' => 'Unit length / height',
            'weight_unit_gram' => 'Gram (g)',
            'weight_unit_kilogram' => 'Kilogram (kg)',
            'weight_unit_lb' => 'Pound (lb)',
            'weight_unit_oz' => 'Ounce (oz)',
            'height_unit_cm' => 'Centimeter (cm)',
            'height_unit_m' => 'Meter (m)',
            'height_unit_inch' => 'Inch',
        ],
    ],
    'sale_popup' => [
        'name' => 'Sale Popup',
        'description' => 'Customize your sale popup settings with ease',
    ],
    'flash_sale' => [
        'name' => 'Flash Sale',
        'description' => 'View and update flash sale settings',
        'enable' => 'Enable flash sale',
        'show_sale_count_left' => 'Show sale count left',
        'show_sale_count_left_description' => 'This option will show the number of products left in the flash sale.',
    ],
    'payment_method_cod_minimum_amount' => 'Minimum order amount - :currency (Optional)',
    'payment_method_minimum_amount' => 'Minimum order amount - :currency (Optional)',
    'display_bank_info_at_the_checkout_success_page' => 'Display bank info at the checkout success page?',
    'invoice_templates' => 'Invoice templates',
];
