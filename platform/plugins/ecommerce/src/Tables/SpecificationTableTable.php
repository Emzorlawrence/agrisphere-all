<?php

namespace Botble\Ecommerce\Tables;

use Botble\Ecommerce\Models\SpecificationTable;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Illuminate\Database\Eloquent\Builder;

class SpecificationTableTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->queryUsing(fn (Builder $query) => $query->withCount('groups'))
            ->model(SpecificationTable::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('ecommerce.specification-tables.create'))
            ->addColumns([
                IdColumn::make(),
                NameColumn::make()->route('ecommerce.specification-tables.edit'),
                FormattedColumn::make('description')
                    ->label(trans('core/base::forms.description'))
                    ->withEmptyState()
                    ->limit(50),
                FormattedColumn::make('groups')
                    ->orderable(false)
                    ->label(trans('plugins/ecommerce::product-specification.specification_tables.fields.assigned_groups'))
                    ->getValueUsing(fn (FormattedColumn $column) => $column->getItem()->groups_count),
                CreatedAtColumn::make(),
            ])
            ->addActions([
                EditAction::make()->route('ecommerce.specification-tables.edit'),
                DeleteAction::make()->route('ecommerce.specification-tables.destroy'),
            ]);
    }
}
