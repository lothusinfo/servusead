

<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/agora/agora.css" />
<?php $__env->stopPush(); ?>


<?php $__env->startSection('content'); ?>
    <div class="agora-page">
        <IFRAME src="<?php echo e($url); ?>" allow="geolocation *; microphone *; camera *; display-capture *;" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"
            sandbox="allow-same-origin allow-scripts allow-modals allow-forms" style='border:0;height:100vh;width:100vw;'
            scrolling="no"></IFRAME>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.default.layouts.app', ['appFooter' => false, 'appHeader' => false], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\servusead\resources\views/web/default/course/bigbluebutton/index.blade.php ENDPATH**/ ?>