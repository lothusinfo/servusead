

<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/agora/agora.css"/>
<?php $__env->stopPush(); ?>


<?php $__env->startSection('content'); ?>

    <div class="agora-page">
        <div class="agora-navbar d-flex align-items-center justify-content-between shoa px-35 py-10">
            <div class="">
                <a class="navbar-brand d-flex align-items-center justify-content-center mr-0" href="/">
                    <?php if(!empty($generalSettings['logo'])): ?>
                        <img src="<?php echo e($generalSettings['logo']); ?>" class="img-cover" alt="site logo">
                    <?php endif; ?>
                </a>

                <span class="font-weight-bold border-left border-gray200 ml-10 pl-10"><?php echo e($session->webinar->title); ?></span>
            </div>
        </div>

        <div class="d-flex flex-column flex-lg-row">
            <div class="agora-stream flex-grow-1 bg-info-light p-15">
                
                

                <IFRAME src="<?php echo e($url); ?>" allow="geolocation *; microphone *; camera *; display-capture *;" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" sandbox="allow-same-origin allow-scripts allow-modals allow-forms" width="100%" height="500" style='border:0' scrolling="no"></IFRAME>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.default.layouts.app',['appFooter' => false, 'appHeader' => false], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\servusead\resources\views/web/default/course/bigbluebutton/index.blade.php ENDPATH**/ ?>