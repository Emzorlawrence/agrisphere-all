<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;

class SpecificationAttribute extends BaseModel
{
    protected $table = 'ec_specification_attributes';

    protected $fillable = [
        'group_id',
        'name',
        'type',
        'options',
        'default_value',
    ];

    protected $casts = [
        'options' => 'array',
    ];
}
