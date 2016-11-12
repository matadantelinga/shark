<div class="panel-group" id="accordion">
	<?php if(empty($careers)) : ?>
		<h3>We have close yet..</h3>
	<?php else : ?>
		<?php $c = 1; ?>
		<?php foreach ($careers as $career) : ?>
		    <div class="panel panel-default">
		        <a data-toggle="collapse" data-parent="#accordion" href="<?php echo '#tab_'.$career['career_id']; ?>">
		            <div class="panel-heading">
		                <h4 class="panel-title"><?php echo $career['career_title']; ?></h4>
		            </div>
		        </a>
		        <div id="<?php echo 'tab_'.$career['career_id']; ?>" class="panel-collapse collapse <?php echo ($c == 1) ? 'in' : '' ?>">
		            <div class="panel-body">
		                <p><strong>Kualifikasi :</strong></p>
		                <?php $qualifications = explode('|', $career['career_qualifications']); ?>
		                <ul>
		                    <?php foreach ($qualifications as $qualification) : ?>
		                        <li><?php echo $qualification; ?></li>
		                    <?php endforeach; ?>
		                </ul>
		                <p><strong>Persyaratan :</strong></p>
		                <?php $skills = explode('|', $career['career_skills']); ?>
		                <ul>
		                    <ul>
		                        <?php foreach ($skills as $skill) : ?>
		                            <li><?php echo $skill; ?></li>
		                        <?php endforeach; ?>
		                    </ul>
		                </ul>
		                <p class="text-right share-button">
		                    <a href="#"><img src="<?php echo asset_url('shark'); ?>images/icon-share.png"/>&nbsp; Share</a>
		                    <a href="<?php echo site_url('apply_career/'.$career['career_slug']); ?>">Apply</a>
		                </p>
		            </div>
		        </div>
		    </div>
		    <?php $c++; ?>
		<?php endforeach; ?>
	<?php endif; ?>
</div>
