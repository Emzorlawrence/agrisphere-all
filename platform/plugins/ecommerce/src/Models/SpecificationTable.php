<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class SpecificationTable extends BaseModel
{
    protected $table = 'ec_specification_tables';

    protected $fillable = [
        'name',
        'description',
    ];

    public function groups(): BelongsToMany
    {
        return $this
            ->belongsToMany(SpecificationGroup::class, 'ec_specification_table_group', 'table_id', 'group_id')
            ->withPivot('order');
    }
}
