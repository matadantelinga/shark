<?php include "header.php"; ?>
<div id="home-page">
	<section id="slider-wrapper">
		<div id="sliders">
			<div class="slider"/>
				<div class="slider-image">
					<img src="<?php asset_url('shark'); ?>images/banner-dummy.jpg" />
				</div>
				<div class="slider-content">
					<h2>We Are The Leader<br/>in The Industry</h2>
					<p>With the latest technology we've made the best product for our customers</p>
					<div class="view-button">
						<a href="<?php echo site_url('our_product/1'); ?>" class="white-btn">View Product</a>
					</div>
				</div>
			</div>
			<div class="slider"/>
				<div class="slider-image">
					<img src="<?php asset_url('shark'); ?>images/banner-dummy.jpg" />
				</div>
				<div class="slider-content">
					<h2>The Best Company, The Best Service</h2>
					<p>Good company comes with great values for their own customers</p>
					<div class="view-button">
						<a href="<?php echo site_url('about'); ?>" class="white-btn">View Profile</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="business-info-wrapper" class="gray-bg content-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="business-area-info">
						<div class="content-title">
							<h2>Who We Are?</h2>
							<hr class="orange-line" />
						</div>
						<div class="business-info-content">
							<?php site_option('opt_about'); ?>
						</div>
					</div>
				</div>
			</div>
			<?php $services = service_widget(); ?>
			<?php if($services != null) : ?>
				<div class="row">
					<div class="col-md-12">
						<div class="content-title">
							<h2>Business Area</h2>
							<hr class="orange-line" />
						</div>
					</div>
				</div>
				<div class="row">
					<?php foreach ($services as $service) : ?>
						<div class="col-md-3 col-sm-3">
							<div class="business-area-info">
								<div class="business-area-image image-width">
									<a href="#"><img src="<?php echo base_url('uploads/post/'.$service['category_img']); ?>" /></a>
								</div>
								<div class="business-area-title">
									<h3><?php echo $service['category_name']; ?></h3>
									<hr class="orange-line" />
								</div>
								<div class="business-info-content">
									<p><?php echo $service['category_desc']; ?></p>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
				</div>
			<?php endif; ?>
		</div>
	</section>
	<section id="3s-solution" class="content-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="content-title">
						<h2>Our 3s Solution</h2>
						<hr class="orange-line" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="tab-side-button">
						<ul>
							<li><a href="#" class="side-button" data-tab="sales">Sales</a></li>
							<li><a href="#" class="side-button" data-tab="service">Service</a></li>
							<li><a href="#" class="side-button" data-tab="sparepart">Sparepart</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-7 col-sm-7">
					<div id="tab-side-content-wrapper">
						<div id="sales" class="tab-side-content" >
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.
							</p>
							<p>
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.</p>
						</div>
						<div id="service" class="tab-side-content" >
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.
							</p>
							<p>
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.</p>
						</div>
						<div id="sparepart" class="tab-side-content">
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.
							</p>
							<p>
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo
							inventore veritatis et quasi architecto.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<img style="height: 350px;" src="<?php asset_url('shark'); ?>images/sol.png"/>
				</div>
			</div>
		</div>
	</section>
	<?php $projects = project_widget(); ?>
	<?php if($projects != null) : ?>
		<section id="latest-project" class="content-padding gray-bg-dark">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="content-title">
							<h2>Our Latest Project</h2>
							<hr class="orange-line" />
						</div>
					</div>
				</div>
				<?php $i = 1; ?>
				<?php foreach ($projects as $project) : ?>
					<?php if ($i%4 == 1) {  echo '<div class="row latest-project-container">'; } ?>
						<div class="col-md-3 col-sm-3">
							<div class="project-wrapper">
								<div class="project-image">
									<img src="<?php echo base_url('uploads/project/'.$project['project_img']); ?>" />
								</div>
								<a href="#">
									<div class="content-absolute">
										<div class="project-title">
											<h3><?php echo $project['project_name']; ?></h3>
										</div>
									</div>
								</a>
							</div>
						</div>
					<?php if ($i%4 == 0) {  echo "</div>"; } ?>
					<?php $i++; ?>
				<?php endforeach; ?>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="view-button">
							<a href="#" class="white-btn">View All</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	<?php endif; ?>
	<?php include"part-mitra.php";?>
	<?php include"part-klien.php";?>
	<?php include"part-sales.php";?>
	<?php include"part-news.php";?>
</div>
<?php include "part-cta.php"; ?>
<?php include "footer.php"; ?>
