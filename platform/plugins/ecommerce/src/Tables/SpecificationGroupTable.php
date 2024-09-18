<?php

namespace Botble\Ecommerce\Tables;

use Botble\Ecommerce\Models\SpecificationGroup;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;

class SpecificationGroupTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(SpecificationGroup::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('ecommerce.specification-groups.create'))
            ->addColumns([
                IdColumn::make(),
                NameColumn::make()->route('ecommerce.specification-groups.edit'),
                FormattedColumn::make('description')
                    ->label(trans('core/base::forms.description'))
                    ->withEmptyState()
                    ->limit(50),
                CreatedAtColumn::make(),
            ])
            ->addActions([
                EditAction::make()->route('ecommerce.specification-groups.edit'),
                DeleteAction::make()->route('ecommerce.specification-groups.destroy'),
            ]);
    }
}
