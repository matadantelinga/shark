<?php include "header.php"; ?>
<section id="page-banner">
	<div id="banner-image">
		<img src="<?php asset_url('shark'); ?>images/banner-support.jpg" alt="" />
	</div>
	<div id="banner-caption">
		<h1>Join With Us</h1>
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
					<p>Isi Form dibawah ini untuk melengkapi data Anda <a href="tel:+62215903411">+6221 5903411</a>
					</p>
					<p>
						<form action="<?php echo site_url('shark_career'); ?>" method="post">
							<?php if($this->session->set_flashdata('success')) : ?>
								<div class="alert alert-success">
					                <b><i class="fa fa-info-circle"></i> Berhasil!</b> Pesan anda telah dikirimkan.
								</div>
							<?php endif; ?>
							<?php if($this->session->set_flashdata('error')) : ?>
								<div class="alert alert-danger">
					                <b><i class="fa fa-info-circle"></i> Gagal!</b> Pesan anda gagal dikirimkan.
								</div>
							<?php endif; ?>
							<?php echo form_error('app_name', '<span class="text-danger">', '</span>'); ?>
							<p><input type="text" name="app_name" placeholder="Nama"/></p>
							<?php echo form_error('app_email', '<span class="text-danger">', '</span>'); ?>
							<p><input type="text" name="app_email" placeholder="Email"/></p>
							<?php echo form_error('app_phone', '<span class="text-danger">', '</span>'); ?>
							<p><input type="text" name="app_phone" placeholder="No. Telepon"/></p>
							<?php echo form_error('app_addr', '<span class="text-danger">', '</span>'); ?>
							<p><textarea name="app_addr" placeholder="Alamat" rows="5"></textarea></p>
							<p><input type="text" name="app_position" placeholder="Posisi yang Dilamar"/></p>
							<p>Upload Your Resume (Pdf/Word) <input type="file" name="app_resume" /></p>
							<?php echo form_error('app_about', '<span class="text-danger">', '</span>'); ?>
							<p><textarea name="app_about" placeholder="Jelaskan tentang diri Anda" rows="10"></textarea></p>
							<p><button type="submit" value="Submit">Kirim</button></p>
						</form>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<?php include "part-cta.php"; ?>
<?php include "footer.php"; ?>
