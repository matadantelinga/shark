<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title"><i class="fa fa-edit"></i> Partner Form</h3>
            </div>
            <form action="<?php echo current_url(); ?>" method="post">
                <div class="box-body">
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" name="partner_name" value="<?php echo set_value('partner_name', $partner_name); ?>" placeholder="Partner Name">
                        <?php echo form_error('partner_name', '<span class="text-danger">', '</span>'); ?>
                    </div>
                    <div class="form-group">
                        <label>Phone<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="partner_phone" value="<?php echo set_value('partner_phone', $partner_phone); ?>">
                        <?php echo form_error('partner_phone', '<span class="text-danger">', '</span>'); ?>
                    </div>
                    <div class="form-group">
                        <label>Email<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="partner_email" value="<?php echo set_value('partner_email', $partner_email); ?>">
                        <?php echo form_error('partner_email', '<span class="text-danger">', '</span>'); ?>
                    </div>
                    <div class="form-group">
                        <label>Location<span class="text-danger">*</span></label>
                        <div class="row">
                            <div class="col-md-6">
                                <select class="form-control" name="">
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <select class="form-control" name="">
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                    <option>sadsadsadasd</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Address<span class="text-danger">*</span></label>
                        <textarea class="form-control" name="partner_addr" rows="2"><?php echo set_value('partner_addr', $partner_addr); ?></textarea>
                        <?php echo form_error('partner_addr', '<span class="text-danger">', '</span>'); ?>
                    </div>
                </div>
                <div class="box-footer">
                    <a href="<?php echo site_url('partners'); ?>" class="btn btn-default">Cancel</a>
                    <button type="submit" class="btn btn-info pull-right">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
