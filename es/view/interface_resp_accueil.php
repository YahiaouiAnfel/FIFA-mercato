
<!DOCTYPE html>
<html lang="fr">
<head>
	
	<meta charset="utf-8">
	<title>Interfaz responsable</title>

	<!-- DÉBUT DU CONTENU -->
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
					<a href="interface_agent.php">El hogar</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Transferencias de jugadores</a></li>
			</ul>


	<div class="row-fluid span11" >
						<div class="span12">

							<?php if(isset($msg) && !$msg): ?>
							   <div class="alert alert-danger">
									<strong>Error !</strong>
							   </div>
							<?php endif; ?>

						

							<?php if(isset($msg2) && !$msg2): ?>
							   <div class="alert alert-danger">
									<strong>Error	</strong>
							   </div>
							<?php endif; ?>



							<?php if(isset($msg3) && $msg3) : ?>
							   <div class="alert alert-success">
									<strong style="font-size:20px"><?php echo $msg3; ?> </strong>  
							   </div>
							<?php endif; ?>			
				


						</div>
		<!-- information -->
<div class="box  span12" style="border-color:black">
	<!-- alert -->



			<!-- fin d'alert -->
					<div width="100%" class="box-header black " data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>Información de transferencia</h2>
						<div class="box-icon" >
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content black">
						<!-- information -->
						<div class="span6" style="padding-bottom:20px">
						<form method="POST">
							<?php if (isset($_GET['id'])) {
									$id=$_GET['id'];
									$c=new Crypt();
									$b=new TransfertA();
							 		$bb=$b->recherche($_GET['id']);
								    $d=$bb->fetch();
									$p =new Player();
									$u=new User();
									$uu=$u->recherche($d['id_president']);
									$s=$uu->fetch();
									$pp=$p->recherche($d['id_player']);
									$player=$pp->fetch();
							}
							?>						
						<table  style="background-image: url(img/fond/c.jpg);width: 100%;background-size:100%;border-radius:15px;box-shadow: 2px 2px 30px #111111;" >
								<tr>
									<td rowspan="3" class="span4" style="text-align: center;padding-top: 30px">
										<?php if (isset($_GET['id'])) { echo '<img style="width:95px;height:95px;border-color:#1c2b36;background-color: #00003F"  src="img/joueurs/'.$player['pic'].'"  class="avatar img-circle">';} ?>
									</td>
									<td style="color: #FFFFFF;padding-top:30px;text-align: right;">Nombre del jugador :  </td>
									<td style="padding-top:30px;text-align:center;">
										<input type="text" class="input-xlarge disabled" id="prependedInput" placeholder="<?php if(isset($_GET['id'])) echo $c->Cesar(strip_tags($player['name_player']),24,1,1); ?>" style=" width: 75%;text-align: center;border-radius:15%" disabled="">
									</td>
								</tr>
							
								<tr>
									<td style="color: #FFFFFF;text-align: right;"> del : </td>
									<td style="text-align: center;">
										<input type="text" class="input-xlarge disabled" id="prependedInput" placeholder="<?php if(isset($_GET['id'])) echo $d['from_c']; ?>" style=" width: 75%;text-align: center;border-radius:15%" disabled="">
									</td>
								</tr>
								<tr>
									<td style="color: #FFFFFF;text-align: right;"> al : </td>
									<td style="text-align: center;">
									<input type="text" class="input-xlarge disabled" id="prependedInput" placeholder="<?php if(isset($_GET['id'])) echo $d['to_c']; ?>" style=" width: 75%;text-align: center;border-radius:15%" disabled=""></td>
								</tr>

								<tr>
									<td style="color: #FFFFFF;text-align: right;"> Presidente : </td>
									<td style="text-align: center;">
										<input type="text" class="input-xlarge disabled" id="prependedInput" placeholder="<?php if(isset($_GET['id'])) echo $c->Cesar(strip_tags($s['name_user']),5,1,1); ?>" style=" width: 75%;text-align: center;border-radius:15%" disabled=""></td>
									
								</tr>

								<tr>
									<td style="color: #FFFFFF;text-align: right;"> Precio : </td>
									<td style="text-align: center;">
										<input type="text" class="input-xlarge disabled" id="prependedInput" placeholder="<?php if(isset($_GET['id'])) echo $d['cost']; ?>" style=" width: 75%;text-align: center;border-radius:15%" disabled=""></td>
									
								</tr>

								<tr>
									<td style="text-align: center;padding-bottom:15px" colspan="2">
									<?php if (isset($_GET['id'])) { ?>
	<form method="POST">
	<button class="btn btn-small btn-success" value="Ajouter" name="ajo"><i class="halflings-icon ok-circle white"></i>Aceptar</button>
									</td>
									<td style="text-align: center;padding-bottom:15px" colspan="2">
	<button type="submit" class="btn btn-small btn-danger" value="Refuser" name="supp" data-target="#supp"><i data-target="#supp"></i>Rechazar</button>
									</td>
								<?php  } ?>

  </form>
				</tr>
										
							</table>
							
							</form>
						</div>

							<!-- /informaion -->
							<!-- tableau bagder -->
				<div class="box span6 black">
					<div class="box-header">
						<h2><i class=" white  halflings-icon pause"></i><span class="break"></span>Transferencias pendientes</h2>
						<div class="box-icon">
						</div>
					</div>
					<div class="box-content ">
						<table class="table table-striped">
							  <thead style="color: black">
								  <tr>
									  <th>Presidente</th>
									  <th>Jugador</th>
									  <th>del</th>
									  <th>al</th>
									  <th>Precio</th>                                 
									  <th>Fecha de transferencia</th>
									  <th>Acción</th>  									                                        
								  </tr>
							  </thead>   
							  <tbody>
							  	<?php  $b=new TransfertA();
								$bb=$b->getAttente(); $i=1; while ($d=$bb->fetch())
 								{ ?>
								<tr style="color: black">
									<td><?php echo $d['id_president'];  ?></td>
									<td class="center"><?php echo $d['id_player'];  ?></td>
									<td class="center"><?php echo $d['from_c'];  ?></td>
									<td class="center"><?php echo $d['to_c'];  ?></td>
									<td class="center"><?php echo $d['cost'];  ?></td>	
									<td class="center"><?php echo $d['date'];  ?></td>				   
									<td> <?php   if($i==1){ echo '<a href="?&id='.$d['id_transfer'].'&a=1" name class="btn btn-primary"><i class="halflings-icon white zoom-in"></i></a>'; }  ?> 
									</td>                         
								</tr>
							     <?php        $i++;        }
								$bb->closeCursor();				// Termine le traitement de la requête
								?>                 
							  </tbody>
						 </table>  
							  
					</div>
				</div>			
				<!-- tableau bagder -->

			</div>

		  </div> 	
     	<!-- /information -->
<div class="box span12 black" >
					<div class="box-header" data-original-title="" >
						<h2><i class=" halflings-icon retweet white "></i><span class="break"></span>Lista de transferencias realizadas</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">


						<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">

									</div>
										<table class="table table-striped table-bordered bootstrap-datatable datatable dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
												  <thead>
							  <tr role="row" style="color:black">
							  	<th >Presidente</th>
							  	<th >Jugador</th>
							  	<th >del</th>
							  	<th >al</th>
							  	<th >Precio</th>
							  	<th >Fecha de transferencia</th>
<!-- 							  	<th>Actions</th>
 -->							  </tr>
						  </thead>   
						  		<?php  $tr=new Transfert();
								$bb=$tr->getTransfer(); $i=1; while ($d=$bb->fetch())
 								{ 
 									$c=new Crypt();
									$u=new User();
									$uu=$u->recherche($d['id_president']);
									$s=$uu->fetch();
									$p =new Player();
									$pp=$p->recherche($d['id_player']);
									$player=$pp->fetch();
 									?>

					  <tbody role="alert" aria-live="polite" aria-relevant="all">
					  	
					  	<tr class="odd" style="color: black">
									<td><?php echo $c->Cesar(strip_tags($s['name_user']),5,1,0);  ?></td>
									<td class="center"><?php echo $c->Cesar(strip_tags($player['name_player']),24,1,1);  ?></td>
									<td class="center"><?php echo $d['from_c'];  ?></td>
									<td class="center"><?php echo $d['to_c'];  ?></td>
									<td class="center"><?php echo $d['cost'];  ?></td>	
									<td class="center"><?php echo $d['date'];  ?></td>	
						</tr>
<?php        $i++;        }
								$bb->closeCursor();				// Termine le traitement de la requête
								?>  	
					</tbody>
				</table>
			</div>   
		</div>         
	</div>
     	<!--  -->
		  
	</div>

</div>

				
					
		
	</div>


					<!--  -->





	
		</div>
		<!--/fluid-row-->

	<div hidden="" class="modal hide fade" id="myModal">
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


	
		<!--modal sup  -->
		<div class="modal  fade" id="supp">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>Refuser la demande</h3>
				</div>
				<div class="modal-body">
					<p>Êtes-vous sûr de vouloir supprimer la demmande ? </p>

				</div>
				<div class="modal-footer">
					<form method="POST">
					<a href="#" class="btn" data-dismiss="modal">Annuler</a>
					<button class="btn btn-danger" name="supp">Confirmer la suppression</button>
					</form>
				</div>
		</div>

  <!--  -->

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
