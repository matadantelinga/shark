<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title"><i class="fa fa-pencil"></i> Page Form</h3>
            </div>
            <div class="box-body">
                <form action="<?php echo current_url(); ?>" method="post">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="form-group">
                                <input type="text" class="form-control input-lg title" name="page_title" value="<?php echo set_value('page_title', $page_title); ?>" placeholder="Page title here...">
                                <input type="hidden" class="slug" name="page_slug" value="<?php echo set_value($page_slug); ?>">
                                <?php echo form_error('page_title', '<p class="text-danger">', '</p>'); ?>
                            </div>
                            <div class="form-group">
                                <?php echo form_error('post_content', '<p class="text-danger">', '</p>'); ?>
                                <textarea class="form-control" name="post_content"><?php echo set_value('post_content', $post_content); ?></textarea>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div style="background: #eee; padding: 10px;">

                                <div class="form-group">
                                    <label>Page layout</label>
                                    <select class="form-control" name="category_id">
                                        <option value="">Select layout</option>
                                        <?php foreach ($layouts as $key => $val) : ?>
                                            <option value="<?php echo $key; ?>"><?php echo $val; ?></option>
                                        <?php endforeach;?>
                                    </select>
                                    <?php echo form_error('category_id', '<p class="text-danger">', '</p>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>Page Parent</label>
                                    <select class="form-control" name="category_id">
                                        <option value="">Select Categories</option>

                                        <?php foreach ($layouts as $key => $val) : ?>
                                            <option value="<?php echo $key; ?>"><?php echo $val; ?></option>
                                        <?php endforeach;?>
                                    </select>
                                    <?php echo form_error('category_id', '<p class="text-danger">', '</p>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>Page banner</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="page_banner" name="page_banner" value="<?php echo set_value('page_banner', $page_banner); ?>">
                                        <span class="input-group-btn">
                                            <a href="<?php echo base_url().'filemanager/dialog.php?type=0&field_id=page_banner&fldr=page'; ?>" class="btn btn-default btn-popup"><i class="fa fa-upload"></i></a>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>
                                        <input type="checkbox" class="minimal" name="is_open" value="1"> Publish Page
                                    </label>
                                </div>
                                <div class="form-group">
                                    <a href="<?php echo site_url('articles'); ?>" class="btn btn-default">Cancel</a>
                                    <button type="submit" class="btn btn-info pull-right">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script src="<?php asset_url('admin'); ?>js/icheck.min.js"></script>
<script>
    $('input[type="checkbox"].minimal').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue'
    });

    tinymce.init({
      selector: 'textarea',
      height: 300,
      theme: 'modern',
      relative_urls: false,
      plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste imagetools"
        ],
        toolbar: "insertfile undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
        external_filemanager_path:"<?php echo base_url();?>filemanager/",
        filemanager_title: "Filemanager" ,
        external_plugins: { "filemanager" : "<?php echo base_url();?>filemanager/plugin.min.js"}
    });
</script>
