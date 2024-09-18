<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Supports\Breadcrumb;
use Botble\Ecommerce\Forms\SpecificationAttributeForm;
use Botble\Ecommerce\Http\Requests\SpecificationAttributeRequest;
use Botble\Ecommerce\Models\SpecificationAttribute;
use Botble\Ecommerce\Tables\SpecificationAttributeTable;

class SpecificationAttributeController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/ecommerce::product-specification.specification_attributes.title'), route('ecommerce.specification-attributes.index'));
    }

    public function index(SpecificationAttributeTable $table)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_attributes.title'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_attributes.create.title'));

        return SpecificationAttributeForm::create()->renderForm();
    }

    public function store(SpecificationAttributeRequest $request)
    {
        $form = SpecificationAttributeForm::create()->setRequest($request)->onlyValidatedData();
        $form->save();

        return $this
            ->httpResponse()
            ->withCreatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-attributes.index')
            ->setNextRoute('ecommerce.specification-attributes.edit', $form->getModel());
    }

    public function edit(SpecificationAttribute $attribute)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-specification.specification_attributes.edit.title', [
            'name' => $attribute->name,
        ]));

        return SpecificationAttributeForm::createFromModel($attribute)->renderForm();
    }

    public function update(SpecificationAttributeRequest $request, SpecificationAttribute $attribute)
    {
        $form = SpecificationAttributeForm::createFromModel($attribute)->setRequest($request)->onlyValidatedData();
        $form->save();

        return $this
            ->httpResponse()
            ->withUpdatedSuccessMessage()
            ->setPreviousRoute('ecommerce.specification-attributes.index')
            ->setNextRoute('ecommerce.specification-attributes.edit', $form->getModel());
    }

    public function destroy(SpecificationAttribute $attribute)
    {
        return DeleteResourceAction::make($attribute);
    }
}
