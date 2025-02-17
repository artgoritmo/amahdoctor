<?php $__env->startSection('title'); ?>
<?php echo e(__('sentence.Edit Drug')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="row justify-content-center">
   <div class="col-md-8">
      <div class="card shadow mb-4">
         <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?php echo e(__('sentence.Edit Drug')); ?> "<?php echo e($drug->trade_name); ?>"</h6>
         </div>
         <div class="card-body">
            <form method="post" action="<?php echo e(route('drug.store_edit')); ?>">
               <div class="form-group">
                  <label for="exampleInputEmail1">Trade Name *</label>
                  <input type="text" class="form-control" name="trade_name" id="TradeName" aria-describedby="TradeName" value="<?php echo e($drug->trade_name); ?>">
                  <?php echo e(csrf_field()); ?>

               </div>
               <div class="form-group">
                  <label for="exampleInputPassword1">Generic Name *</label>
                  <input type="text" class="form-control" name="generic_name" id="GenericName" value="<?php echo e($drug->generic_name); ?>">
                  <input type="hidden" name="drug_id" value="<?php echo e($drug->id); ?>">
               </div>
               <div class="form-group">
                  <label for="exampleInputPassword1">Note</label>
                  <input type="text" class="form-control" name="note" id="Note">
               </div>
               <button type="submit" class="btn btn-primary"><?php echo e(__('sentence.Save')); ?></button>
            </form>
         </div>
      </div>
   </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\DoctorLife\resources\views/drug/edit.blade.php ENDPATH**/ ?>