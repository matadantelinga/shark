<?php include "header.php"; ?>
<section id="page-banner">
	<div id="banner-image">
		<img src="<?php asset_url('shark') ?>images/banner-support.jpg" alt="" />
	</div>
	<div id="banner-caption">
		<h1>Support</h1>
	</div>
</section>
<section class="page-with-sidebar content-padding">
	<div class="container">
		<div class="row">
			<div class="medium-3 col-sm-3">
				<?php include "sidebar.php"; ?>
			</div>
			<div class="medium-9 col-sm-9">
				<div class="page-sidebar-content">
					<h3><?php echo $page_title; ?></h3>
					<hr/>
					<p><img src="<?php echo base_url('uploads/post/'.$page_image); ?>" /></p>
					<?php echo $page_content; ?>
					<hr/>
					<div class="share-button">
						<a href="#"><img src="=<?php echo asset_url('shark'); ?>images/icon-share.png"/>&nbsp; Share</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php include "part-cta.php"; ?>
<?php include "footer.php"; ?>
