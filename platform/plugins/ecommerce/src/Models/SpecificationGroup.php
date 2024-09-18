<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SpecificationGroup extends BaseModel
{
    protected $table = 'ec_specification_groups';

    protected $fillable = [
        'name',
        'description',
    ];

    protected static function booted(): void
    {
        static::deleting(function (self $group) {
            $group->specificationAttributes()->delete();
        });
    }

    public function specificationAttributes(): HasMany
    {
        return $this->hasMany(SpecificationAttribute::class, 'group_id');
    }
}
