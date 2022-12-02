<div class="accordion-row bg-white rounded-lg border border-gray300 mt-3 py-3 py-lg-4 px-2 px-lg-3">
    <div class="d-flex align-items-center justify-content-between " role="tab" id="specification_<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>">
        <div class="d-flex align-items-center cursor-pointer" href="#collapseSpecification<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" aria-controls="collapseSpecification<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" data-parent="#specificationsAccordion" role="button" data-toggle="collapse" aria-expanded="true">
            <div class="font-weight-bold text-dark-blue d-block"><?php echo e(!empty($selectedSpecification) ? $selectedSpecification->specification->title : trans('update.add_new_specification')); ?></div>
        </div>

        <div class="d-flex align-items-center">
            <?php if(!empty($selectedSpecification) and $selectedSpecification->status != 'active'): ?>
                <span class="disabled-content-badge mr-3"><?php echo e(trans('public.disabled')); ?></span>
            <?php endif; ?>

            <?php if(!empty($selectedSpecification)): ?>
                <?php echo $__env->make('admin.includes.delete_button',['url' => '/admin/store/products/specifications/'. $selectedSpecification->id .'/delete','btnClass' => 'mr-3', 'btnText' => '<i class="fa fa-trash"></i>'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endif; ?>

            <i class="collapse-chevron-icon fa fa-chevron-down cursor-pointer" href="#collapseSpecification<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" aria-controls="collapseSpecification<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" data-parent="#specificationsAccordion" role="button" data-toggle="collapse" aria-expanded="true"></i>
        </div>
    </div>

    <div id="collapseSpecification<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" aria-labelledby="specification_<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id :'record'); ?>" class=" collapse <?php if(empty($selectedSpecification)): ?> show <?php endif; ?>" role="tabpanel">
        <div class="panel-collapse text-gray">
            <div class="js-content-form specification-form" data-action="/admin/store/products/specifications/<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id . '/update' : 'store'); ?>">
                <input type="hidden" name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][product_id]" value="<?php echo e(!empty($product) ? $product->id :''); ?>">
                <input type="hidden" class="js-input-type" name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][input_type]" value="<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->type :''); ?>">

                <div class="row">
                    <div class="col-12 col-lg-6">

                        <?php if(!empty(getGeneralSettings('content_translate'))): ?>
                            <div class="form-group">
                                <label class="input-label"><?php echo e(trans('auth.language')); ?></label>
                                <select name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][locale]"
                                        class="form-control <?php echo e(!empty($selectedSpecification) ? 'js-product-content-locale' : ''); ?>"
                                        data-product-id="<?php echo e(!empty($product) ? $product->id : ''); ?>"
                                        data-id="<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : ''); ?>"
                                        data-relation="selectedSpecifications"
                                        data-fields="value"
                                >
                                    <?php $__currentLoopData = getUserLanguagesLists(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($lang); ?>" <?php echo e((!empty($selectedSpecification) and !empty($selectedSpecification->value) and !empty($selectedSpecification->locale)) ? (mb_strtolower($selectedSpecification->locale) == mb_strtolower($lang) ? 'selected' : '') : ($locale == $lang ? 'selected' : '')); ?>><?php echo e($language); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                        <?php else: ?>
                            <input type="hidden" name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][locale]" value="<?php echo e($defaultLocale); ?>">
                        <?php endif; ?>

                        <div class="form-group mt-15">
                            <label class="input-label d-block"><?php echo e(trans('update.specification')); ?></label>

                            <select name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][specification_id]"
                                    class="js-ajax-specification_id form-control <?php echo e(!empty($selectedSpecification) ? '' : 'specification-select2'); ?>"
                                    data-placeholder="<?php echo e(trans('update.search_and_select_specifications')); ?>"
                                    data-allow-clear="false"
                                <?php echo e(!empty($selectedSpecification) ? 'disabled' : ''); ?>

                            >

                                <?php if(!empty($productSpecifications)): ?>
                                    <option value=""><?php echo e(trans('update.search_and_select_specifications')); ?></option>
                                    <?php $__currentLoopData = $productSpecifications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $productSpecification): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($productSpecification->id); ?>" <?php echo e((!empty($selectedSpecification) and $selectedSpecification->product_specification_id == $productSpecification->id) ? 'selected' : ''); ?>><?php echo e($productSpecification->title); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php elseif(!empty($selectedSpecification)): ?>
                                    <option value="<?php echo e($selectedSpecification->specification->id); ?>" selected><?php echo e($selectedSpecification->specification->title); ?></option>
                                <?php endif; ?>
                            </select>
                            <div class="invalid-feedback"></div>

                            <?php if(!empty($selectedSpecification)): ?>
                                <input type="hidden" name="ajax[<?php echo e($selectedSpecification->id); ?>][specification_id]" value="<?php echo e($selectedSpecification->specification->id); ?>">
                            <?php endif; ?>
                        </div>

                            <div class="form-group js-multi-values-input  <?php echo e((!empty($selectedSpecification) and $selectedSpecification->type == 'multi_value') ? '' : 'd-none'); ?>">
                                <label class="input-label d-block"><?php echo e(trans('update.parameters')); ?></label>

                                <?php
                                    $selectedMultiValues = [];

                                    if (!empty($selectedSpecification)) {
                                        $selectedMultiValues = $selectedSpecification->selectedMultiValues->pluck('specification_multi_value_id')->toArray();
                                    }
                                ?>

                                <select name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][multi_values][]"
                                        class="js-ajax-multi_values form-control <?php echo e(!empty($selectedSpecification) ? 'select-multi-values-select2' : 'multi_values-select'); ?>"
                                        multiple
                                        data-placeholder="<?php echo e(trans('update.select_specification_params')); ?>"
                                        data-allow-clear="false"
                                        data-search="false"
                                >

                                    <?php if(!empty($selectedSpecification->specification) and !empty($selectedSpecification->specification->multiValues)): ?>
                                        <?php $__currentLoopData = $selectedSpecification->specification->multiValues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $multiValue): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($multiValue->id); ?>" <?php echo e(in_array($multiValue->id,$selectedMultiValues) ? 'selected' : ''); ?>><?php echo e($multiValue->title); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </select>

                                <div class="invalid-feedback"></div>
                            </div>

                        <div class="form-group js-summery-input <?php echo e((!empty($selectedSpecification) and $selectedSpecification->type == 'textarea') ? '' : 'd-none'); ?>">
                            <label class="input-label d-block"><?php echo e(trans('update.description')); ?></label>
                            <textarea name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][summary]" rows="4" class="js-ajax-summary form-control "><?php echo e((!empty($selectedSpecification) and $selectedSpecification->type == 'textarea') ? $selectedSpecification->value : ''); ?></textarea>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="form-group mt-3 js-allow-selection-input <?php echo e((!empty($selectedSpecification) and $selectedSpecification->type == 'multi_value') ? '' : 'd-none'); ?>">
                            <div class="d-flex align-items-center justify-content-between">
                                <label class="cursor-pointer input-label" for="specificationAllowSelectionSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>"><?php echo e(trans('update.allow_user_selection')); ?></label>
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][allow_selection]" class="custom-control-input" id="specificationAllowSelectionSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>" <?php echo e((!empty($selectedSpecification) and $selectedSpecification->allow_selection) ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="specificationAllowSelectionSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>"></label>
                                </div>
                            </div>
                            <div class="text-muted text-small mt-1"><?php echo e(trans('update.allow_user_selection_hint')); ?></div>
                        </div>

                        <div class="form-group mt-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <label class="cursor-pointer input-label" for="specificationStatusSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>"><?php echo e(trans('public.active')); ?></label>
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" name="ajax[<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : 'new'); ?>][status]" class="custom-control-input" id="specificationStatusSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>" <?php echo e((empty($selectedSpecification) or $selectedSpecification->status == \App\Models\ProductSelectedSpecification::$Active) ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="specificationStatusSwitch<?php echo e(!empty($selectedSpecification) ? $selectedSpecification->id : '_record'); ?>"></label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="mt-30 d-flex align-items-center">
                    <button type="button" class="js-save-specification btn btn-sm btn-primary"><?php echo e(trans('public.save')); ?></button>

                    <?php if(empty($selectedSpecification)): ?>
                        <button type="button" class="btn btn-sm btn-danger ml-2 cancel-accordion"><?php echo e(trans('public.close')); ?></button>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /var/www/servusead/resources/views/admin/store/products/create/accordions/specification.blade.php ENDPATH**/ ?>