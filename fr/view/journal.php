<?php  
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Ajout d'un Personnel</title>		



			<!-- DÉBUT DU CONTENU -->
			<div id="content" class="span10" style="background-color:#f3ecc8">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="admin.php">Accueil</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Journal des activités</a></li>
			</ul>


			<div class="row-fluid span11">

			
				<!-- alert -->
				<div >

					<?php if(isset($existper) && $existper) : ?>
					   <div class="alert alert-danger">
							<strong>Erreur:</strong> cette personne existe deja !
					   </div>
					<?php endif; ?>

					<?php if(isset($msg2) && !$msg2) : ?>
					   <div class="alert alert-danger">
							<strong>Erreur:</strong> le mot de passe n'est pas correcte 
					   </div>
					<?php endif; ?>

					<?php if(isset($msg) && !$msg): ?>
					   <div class="alert alert-danger">
							<strong>les info ne sont pas bien enregistrer !</strong>
					   </div>
					<?php endif; ?>

					<?php if(isset($msg) && $msg) : ?>
					   <div class="alert alert-success">
							<strong>Merci ...les les info sont bien enregistrer </strong>  
					   </div>
					<?php endif; ?>
				</div>


			<!-- fin d'alert -->
				<div class="box span12 black">
							<div class="box-header black" data-original-title="">
								<h2><i class="halflings-icon white user"></i><span class="break"></span>Journal</h2>
								<div class="box-icon">
									<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
									<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
									<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
								</div>
							</div>
							<div class="box-content ">
								<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
									<table class="table table-striped table-bordered bootstrap-datatable datatable dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
								  <thead>
									  <tr role="row" style="color: black">
									  	<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 204px;">Agent</th>
									  	<th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Date registered: activate to sort column ascending" style="width: 296px;"> Action</th>
									  	<th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Role: activate to sort column ascending" style="width: 165px;">Date</th>
									  	
									  </tr>
								  </thead>   

							  <tbody role="alert" aria-live="polite" aria-relevant="all" style="color: black">	
								<?php 
								$a=new Gactivity();
								$pp=$a->getActy();
										while ($d=$pp->fetch()){
										$age=new MGagent();
										$aa=$age->rechercheM($d['IMatP']);
										$aaa=$aa->fetch();
									?>
							  	<tr class="odd">
										<td class="  sorting_1"><?php echo $aaa['INomPnom']; ?></td>
										<td class="  sorting_1"><?php echo $d['IAction']; ?></td>
										<td class="center "><?php echo $d['IDate']; ?></td>
										
									</tr>
									  <?php  } $pp->closeCursor();	?>
								</tbody>
							</table>
						</div>            
					</div>
				</div>
		

			<!-- end: Content -->
		





		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="http://themifycloud.com">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
	
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
