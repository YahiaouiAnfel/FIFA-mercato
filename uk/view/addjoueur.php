<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Player Management</title>		
	<link rel="icon" type="image/png" href="../images/icons/dz_icon.png"/>


			<!-- DÉBUT DU CONTENU -->
			<div id="content" class="span10" style="
background: #f6f8f9;
background: -moz-linear-gradient(top, #f6f8f9 0%, #e5ebee 50%, #d7dee3 53%, #f5f7f9 100%);
background: -webkit-linear-gradient(top, #f6f8f9 0%,#e5ebee 50%,#d7dee3 53%,#f5f7f9 100%);
background: linear-gradient(to bottom, #f6f8f9 0%,#e5ebee 50%,#d7dee3 53%,#f5f7f9 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f6f8f9', endColorstr='#f5f7f9',GradientType=0 );
			">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.php">Accueil</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#"><?php 
									if ($_GET['a']=="edit") {
										echo "Modification du joueur";
										$a= new Player();
										$aa=$a->recherche($_GET['idd']);
										$d=$aa->fetch();

									}else echo "Ajouter un joueur";

								?></a></li>
			</ul>


			<div class="row-fluid span11" >


				<!-- alert -->
				<div >

					<?php if(isset($existj) && $existj) : ?>
					   <div class="alert alert-danger">
							<strong>Error:</strong> this player already exists!
					   </div>
					<?php endif; ?>

				<?php if(isset($msg3) && $msg3 && !$msg) : ?>
					   <div class="alert alert-success">
							<strong>Thank you!</strong> the player has been added!
					   </div>
					<?php endif; ?>
					<?php if(isset($msg2) && !$msg2) : ?>
					   <div class="alert alert-danger">
							<strong>Error:</strong> please fill in all the info!
					   </div>
					<?php endif; ?>

					<?php if(isset($msg) && !$msg): ?>
					   <div class="alert alert-danger">
							<strong>Player information has not been recorded correctly, please check the entered fields.</strong>
					   </div>
					<?php endif; ?>

					<?php if(isset($msg) && $msg) : ?>
					   <div class="alert alert-success">
							<strong>Thank you! the information has been saved.</strong>  
					   </div>
					<?php endif; ?>
				</div>


			<!-- fin d'alert -->
	
			<div class="row-fluid sortable">
				<div class="box span12" style="">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>
								<?php 
									if ($_GET['a']=="edit") {
										echo "Modification du joueur";
										$a= new Player();
										$aa=$a->recherche($_GET['idd']);
										$d=$aa->fetch();

									}else echo "Ajouter un joueur";

								?>

						</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						
						</div>
					</div>
					<div class="box-content" >
						<form class="form-horizontal"  method="POST" enctype="multipart/form-data">
							<fieldset>

							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player name</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="nomj" value="'.$t->Cesar(strip_tags($d['name_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="nomj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>

							 <div class="control-group">
								<label class="control-label" for="prependedInput">End of contract date</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="dfc" value="'.$d['date_end_contract'].'" id="prependedInput"  type="text" >';
									}else echo '<input name="dfc"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Contract breaking price</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="prc" value="'.$t->Cesar(strip_tags($d['price_breach_contract']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="prc"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>

							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player score</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="sj" value="'.$t->Cesar(strip_tags($d['score_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="sj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player Team</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input class "input-xlarge disabled" name="ej" value="'.$t->Cesar(strip_tags($d['team_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="ej"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player Speed</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="vj" value="'.$t->Cesar(strip_tags($d['speed_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="vj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Dribbling</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="dj" value="'.$t->Cesar(strip_tags($d['dribbling_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="dj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>



							 <div class="control-group">
								<label class="control-label" for="prependedInput">Shots</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="tj" value="'.$t->Cesar(strip_tags($d['shooting_player']),24,1,1)	.'" id="prependedInput"  type="text" >';
									}else echo '<input name="tj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Defense</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="dfj" value="'.$t->Cesar(strip_tags($d['defense_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="dfj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Physical Performance</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="pp" value="'.$t->Cesar(strip_tags($d['physical_performance']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="pp"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player's position</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="pj" value="'.$t->Cesar(strip_tags($d['position_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="pj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>


							 <div class="control-group">
								<label class="control-label" for="prependedInput">Passes</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="paj" value="'.$t->Cesar(strip_tags($d['passes_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="paj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>

							 <div class="control-group">
								<label class="control-label" for="prependedInput">Player's salary</label>
								<div class="controls">
								  <div class="input-prepend">
									<?php 
									if ($_GET['a']=='edit') {
										  echo '<input name="saj" value="'.$t->Cesar(strip_tags($d['salary_player']),24,1,1).'" id="prependedInput"  type="text" >';
									}else echo '<input name="saj"  id="prependedInput" size="16" type="text" >';
									?>
								  </div>
							
								</div>
							 </div>							 
							 							 							 							 							 								 							 							 							 
							  <div class="control-group">
								<label class="control-label">Photo </label>
								<div class="controls">
								  <input name="ph" type="file" >
								</div>
							  </div>


								 <div class="form-actions">
								<button name="cnf" type="submit" class="btn btn-primary">Save</button>
								<button name="sup" class="btn">Cancel</button>
							  </div>

					</div>
				</div>
	</div><!--/.fluid-container-->
	

							</fieldset>
						</form>

			<!-- end: Content -->
		





		
	
	<div class="clearfix"></div>
	
	
	
	<!-- start: JavaScript-->

		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	
		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
