<div class="row">
    <div class="col-5">
        <div class="form-group">
            <label class="input-label" for="mobile"><?php echo e(trans('auth.country')); ?> <span style='color:red;'>*</span>:</label>
            <select name="country_code" class="form-control select2 required" required>
                <option value=""><?php echo e(trans('auth.select')); ?></option>
                <?php $__currentLoopData = getCountriesMobileCode(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country => $code): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($code); ?>"><?php echo e($country); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>

        </div>
    </div>

    <div class="col-7">
        <div class="form-group">
            <label class="input-label" for="mobile"><?php echo e(trans('auth.mobile')); ?> <?php echo e(!empty($optional) ? "(". trans('public.optional') .")" : ''); ?> <?= !empty($required) ? "<span style='color:red;'>*</span>" : '' ;?>: <small>DDD + número (sem o 9° dígito)</small></label>
            <input name="mobile" type="text" class="form-control <?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> ls-mask-phone8_with_ddd" value="<?php echo e(old('mobile')); ?>" id="mobile" aria-describedby="mobileHelp" placeholder="DDD + 00000000" data-mask="0000000000" required>

            <?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <div class="invalid-feedback">
                <?php echo e($message); ?>

            </div>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\servusead\resources\views/web/default/auth/register_includes/mobile_field.blade.php ENDPATH**/ ?>