<?php
require_once(__DIR__.'/../models/Gactiv.php');

require_once("./models/Gagent.php");
// début de la session
session_start();


// création d'un objet USER pour l'authentification
$login = new USER();

// récupération des données saisies à partir du formulaire/gestion des exceptions des connexions/redirection selon le grade vers la page associé

if(isset($_POST['btn-login']))
{
	$mat = strip_tags($_POST['txt_mat']);
	$upass = strip_tags($_POST['txt_pass']);
		
	if($login->connexion($mat,$upass))
	{
	if ($_SESSION['user_grade']==1) {
	$login->redirect('agent.php');


	$activ=new Gactiv();
	$activ->creat($_POST['txt_mat']);


	 }else if ($_SESSION['user_grade']==2) {
	$login->redirect('admin.php'); 

	}
	}
	else
	{
		$error = "Matricule ou mot de passe incorrect!";
	}	
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Sontrach Park - Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->


</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/s.png');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					<img src="images/s.png" alt="pfe"/>
				</span> 

<!--affichage des erreurs-->

	<?php
	if(isset($error)){
		?>
        <div class="alert alert-danger">
          <span class="glyphicon glyphicon-info-sign"></span> &nbsp; <?php echo $error; ?>
        </div>
        <?php
	}
	?>
				<form  method="post" class="login100-form validate-form p-b-33 p-t-5">

					<div class="wrap-input100 validate-input" data-validate = "Insérer votre matricule">
						<input class="input100" type="text" name="txt_mat" placeholder="Matricule">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Insérer mot de passe">
						<input class="input100" type="password" name="txt_pass" placeholder="Mot de passe">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="container-login100-form-btn m-t-32">
						<button type="submit" name="btn-login" class="login100-form-btn">
							Connexion
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>