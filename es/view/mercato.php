<?php 

$p=new Player();

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>MERCATO</title>
</head>

<body>
					<!-- start: Content -->
			<div id="content" class="span12" style="
background: #f6f8f9;
background: -moz-linear-gradient(top, #f6f8f9 0%, #e5ebee 50%, #d7dee3 53%, #f5f7f9 100%);
background: -webkit-linear-gradient(top, #f6f8f9 0%,#e5ebee 50%,#d7dee3 53%,#f5f7f9 100%);
background: linear-gradient(to bottom, #f6f8f9 0%,#e5ebee 50%,#d7dee3 53%,#f5f7f9 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f6f8f9', endColorstr='#f5f7f9',GradientType=0 );
			">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.php">El hogar</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">MERCATO</a></li>
			</ul>

			<div class="row-fluid">


			<!-- alert -->
				<div >
					<?php if(isset($msg) && $msg) : ?>
					   <div class="alert alert-success">
							<strong>Se ha enviado una solicitud de compra, pendiente de confirmación por parte del administrador de transferencias.</strong>  
					   </div>
					<?php endif; ?>

					<?php if(isset($msg) && !$msg): ?>
					   <div class="alert alert-danger">
							<strong>La operación de compra falló</strong>
					   </div>
					<?php endif; ?>
				</div>


			<!-- fin d'alert -->

<?php  if($_SESSION['pays'] != "DZ"){ ?>
				<div class="row-fluid sortable" >
				<div class="box span12 black" style="">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>MERCADO ALGERIANO</h2>
						<div class="box-icon" >
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">

							<br>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr style="color: black">

								  <th>Foto</th>
								  <th>Nombre del jugador</th>
								  <th>Fecha de finalización del contrato</th>
								  <th>Puntuación</th>
								  <th>Equipo</th>
								  <th>Posición</th>
								  <th>Opciones</th>	 						  
							  </tr>
						  </thead>   
						  <tbody style="color: black">
						  	<?php 	$pp=$p->getJoueurP("DZ");
								while ($d=$pp->fetch()){
							?>
							<tr>
								<td style="text-align: center"><img style="width:50px;height:50px" class="avatar img-circle"  src="img\joueurs\<?php echo $d['pic']; ?>"> 
								</td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['name_player']),24,1,1); ?></td>
								<td class="center"><?php echo $d['date_end_contract']; ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['score_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['team_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['position_player']),24,1,1); ?></td>
	
								<td class="center" style="text-align: center">
									<?php if (isset($_GET['id']) && $_GET['id']==$d['id_player']) { ?>
																		

  									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#info">
  									 <i class=" halflings-icon  white zoom-in "></i>
  									</button>

									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#achat">
  									 <i class=" halflings-icon shopping-cart white "></i>
  									</button>


									<?php } ?>
									
									<?php if (!isset($_GET['id']) || $_GET['id']!=$d['id_player']) { ?> 

									<a class="btn btn-xs btn-primary" href="?&id=<?php echo $d['id_player'];?>" name='a' >
										 <i class="halflings-icon shopping-cart  white edit " data-target="#achat" ></i>
									</a>
									
									<?php } ?></td>
							</tr>
								<?php                }
								$pp->closeCursor();				// Termine le traitement de la requête
							?> 
						  </tbody>
					  </table>   
					  </div>         
					</div>
				</div><!--/span-->

<?php  } ?>

<?php  if($_SESSION['pays'] != "FR"){ ?>
				<div class="row-fluid sortable" >
				<div class="box span12 black" style="">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>MERCADO FRANCÉS</h2>
						<div class="box-icon" >
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">

							<br>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr style="color: black">

								  <th>Foto</th>
								  <th>Nombre del jugador</th>
								  <th>Fecha de finalización del contrato</th>
								  <th>Puntuación</th>
								  <th>Equipo</th>
								  <th>Posición</th>
								  <th>Opciones</th>							  
							  </tr>
						  </thead>   
						  <tbody style="color: black">
						  	<?php 	$pp=$p->getJoueurP("FR");
								while ($d=$pp->fetch()){
							?>
							<tr>
								<td style="text-align: center"><img style="width:50px;height:50px" class="avatar img-circle"  src="img\joueurs\<?php echo $d['pic']; ?>"> 
								</td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['name_player']),24,1,1); ?></td>
								<td class="center"><?php echo $d['date_end_contract']; ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['score_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['team_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['position_player']),24,1,1); ?></td>
	
								<td class="center" style="text-align: center">
									<?php if (isset($_GET['id']) && $_GET['id']==$d['id_player']) { ?>
																		

  									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#info">
  									 <i class=" halflings-icon  white zoom-in "></i>
  									</button>

									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#achat">
  									 <i class=" halflings-icon  shopping-cart white "></i>
  									</button>


									<?php } ?>
									
									<?php if (!isset($_GET['id']) || $_GET['id']!=$d['id_player']) { ?> 

									<a class="btn btn-xs btn-primary" href="?&id=<?php echo $d['id_player'];?>" name='a' >
										 <i class="halflings-icon shopping-cart  white edit " data-target="#achat" ></i>
									</a>
									
									<?php } ?></td>
								<?php                }
								$pp->closeCursor();				// Termine le traitement de la requête
							?> 
						  </tbody>
					  </table>   
					  </div>         
					</div>
				</div><!--/span-->
<?php  } ?>

<?php  if($_SESSION['pays'] != "UK"){ ?>
				<div class="row-fluid sortable" >
				<div class="box span12 black" style="">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>MERCADO DE INGLES</h2>
						<div class="box-icon" >
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">

							<br>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr style="color: black">

								  <th>Foto</th>
								  <th>Nombre del jugador</th>
								  <th>Fecha de finalización del contrato</th>
								  <th>Puntuación</th>
								  <th>Equipo</th>
								  <th>Posición</th>
								  <th>Opciones</th>	 					  
							  </tr>
						  </thead>   
						  <tbody style="color: black">
						  	<?php 	$pp=$p->getJoueurP("UK");
								while ($d=$pp->fetch()){
							?>
							<tr>
								<td style="text-align: center"><img style="width:50px;height:50px" class="avatar img-circle"  src="img\joueurs\<?php echo $d['pic']; ?>"> 
								</td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['name_player']),24,1,1); ?></td>
								<td class="center"><?php echo $d['date_end_contract']; ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['score_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['team_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['position_player']),24,1,1); ?></td>
	
																
								<td class="center" style="text-align: center">
									<?php if (isset($_GET['id']) && $_GET['id']==$d['id_player']) { ?>
																		

  									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#info">
  									 <i class=" halflings-icon  white zoom-in "></i>
  									</button>

									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#achat">
  									 <i class=" halflings-icon shopping-cart white"></i>
  									</button>


									<?php } ?>
									
									<?php if (!isset($_GET['id']) || $_GET['id']!=$d['id_player']) { ?> 

									<a class="btn btn-xs btn-primary" href="?&id=<?php echo $d['id_player'];?>" name='a' >
										 <i class="halflings-icon shopping-cart  white edit " data-target="#achat" ></i>
									</a>
									
									<?php } ?></td>
								<?php                }
								$pp->closeCursor();				// Termine le traitement de la requête
							?> 
						  </tbody>
					  </table>   
					  </div>         
					</div>
				</div><!--/span-->
<?php  } ?>

<?php  if($_SESSION['pays'] != "ES"){ ?>
				<div class="row-fluid sortable" >
				<div class="box span12 black" style="">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>MERCADO ESPAÑOL</h2>
						<div class="box-icon" >
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">

							<br>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr style="color: black">

								  <th>Foto</th>
								  <th>Nombre del jugador</th>
								  <th>Fecha de finalización del contrato</th>
								  <th>Puntuación</th>
								  <th>Equipo</th>
								  <th>Posición</th>
								  <th>Opciones</th> 						  
							  </tr>
						  </thead>   
						  <tbody style="color: black">
						  	<?php 	$pp=$p->getJoueurP("ES");
								while ($d=$pp->fetch()){
							?>
							<tr>
								<td style="text-align: center"><img style="width:50px;height:50px" class="avatar img-circle"  src="img\joueurs\<?php echo $d['pic']; ?>"> 
								</td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['name_player']),24,1,1); ?></td>
								<td class="center"><?php echo $d['date_end_contract']; ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['score_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['team_player']),24,1,1); ?></td>
								<td class="center"><?php echo $t->Cesar(strip_tags($d['position_player']),24,1,1); ?></td>
	
								
								<td class="center" style="text-align: center">
									<?php if (isset($_GET['id']) && $_GET['id']==$d['id_player']) { ?>
																		

  									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#info">
  									 <i class=" halflings-icon  white zoom-in "></i>
  									</button>

									<button type="button"   class="btn btn-info btn-lg" data-toggle="modal" data-target="#achat">
  									 <i class=" halflings-icon  shopping-cart white "></i>
  									</button>


									<?php } ?>
									
									<?php if (!isset($_GET['id']) || $_GET['id']!=$d['id_player']) { ?> 

									<a class="btn btn-xs btn-primary" href="?&id=<?php echo $d['id_player'];?>" name='a' >
										 <i class="halflings-icon shopping-cart white edit " data-target="#achat" ></i>
									</a>
									
									<?php } ?></td>

								<?php                }
								$pp->closeCursor();				// Termine le traitement de la requête
							?> 
						  </tbody>
					  </table>   
					  </div>         
					</div>
				</div><!--/span-->
<?php  } ?>


	</div>
			

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
			




	<!--modal sup  -->
  <div class="modal fade" id="achat" role="dialog" hidden="">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>Comprar el jugador</h3>
				</div>
				<div class="modal-body">
					<p>Seguro que quieres comprar el reproductor ? </p>

				</div>
				<div class="modal-footer">
					<form method="POST">			
  					<input type="submit"  type="button" class="btn btn-success btn-lg" name="acheter" value="Comprar">
  					<a href="#" class="btn" data-dismiss="modal">Anular</a>						

					</form>
				</div>
		</div>

  <!--  -->
	
	


  <!-- Modal modif -->
  <div class="modal fade" id="info" role="dialog" hidden="">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Performance du joueur </h4>
        </div>
        <div class="modal-body">

					</div>
				</div>
<!-- END BODY -->
        </div>
        <div class="modal-footer">
          	<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
        </div>
      </div>
    </div>
  </div>
	
	
	
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
