<!-- Modal -->
<div class="d-none" id="bundleWebinarsModal">
    <h3 class="section-title after-line font-20 text-dark-blue mb-25"><?php echo e(trans('update.add_new_course')); ?></h3>

    <form action="/admin/bundle-webinars/store" method="post">
        <input type="hidden" name="bundle_id" value="<?php echo e(!empty($bundle) ? $bundle->id :''); ?>">

        <div class="form-group mt-15">
            <label class="input-label d-block"><?php echo e(trans('public.select_prerequisites')); ?></label>
            <select name="webinar_id" class="form-control bundleWebinars-select" data-bundle-id="<?php echo e(!empty($bundle) ? $bundle->id : ''); ?>" data-placeholder="<?php echo e(trans('panel.select_course')); ?>">

                <?php if(!empty($userWebinars) and count($userWebinars)): ?>
                    <?php $__currentLoopData = $userWebinars; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $userWebinar): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($userWebinar->id); ?>"><?php echo e($userWebinar->title); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </select>
            <div class="invalid-feedback"></div>
        </div>

        <div class="mt-30 d-flex align-items-center justify-content-end">
            <button type="button" id="saveBundleWebinar" class="btn btn-primary"><?php echo e(trans('public.save')); ?></button>
            <button type="button" class="btn btn-danger ml-2 close-swl"><?php echo e(trans('public.close')); ?></button>
        </div>
    </form>
</div>
<?php /**PATH C:\xampp\htdocs\servusead\resources\views/admin/bundles/modals/bundle-webinar.blade.php ENDPATH**/ ?>