<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Supports\Breadcrumb;
use Botble\Ecommerce\Forms\SpecificationGroupForm;
use Botble\Ecommerce\Http\Requests\SpecificationGroupRequest;
use Botble\Ecommerce\Models\SpecificationGroup;
use Botble\Ecommerce\Tables\SpecificationGroupTable;

class SpecificationGroupController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/ecommerce::product-specification.specification_groups.title'), route('ecommerce.specification-groups.index'));
    }

    public function index(SpecificationGroupTable $table)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_groups.title'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_groups.create.title'));

        return SpecificationGroupForm::create()->renderForm();
    }

    public function store(SpecificationGroupRequest $request)
    {
        $form = SpecificationGroupForm::create()->setRequest($request)->onlyValidatedData();
        $form->save();

        return $this
            ->httpResponse()
            ->withCreatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-groups.index')
            ->setNextRoute('ecommerce.specification-groups.edit', $form->getModel());
    }

    public function edit(SpecificationGroup $group)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_groups.edit.title', [
            'name' => $group->name,
        ]));

        return SpecificationGroupForm::createFromModel($group)->renderForm();
    }

    public function update(SpecificationGroupRequest $request, SpecificationGroup $group)
    {
        $form = SpecificationGroupForm::createFromModel($group)->setRequest($request)->onlyValidatedData();
        $form->save();

        return $this
            ->httpResponse()
            ->withUpdatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-groups.index')
            ->setNextRoute('ecommerce.specification-groups.edit', $form->getModel());
    }

    public function destroy(SpecificationGroup $group)
    {
        return DeleteResourceAction::make($group);
    }
}
