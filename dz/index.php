<?php


// début de la session
session_start();
// récupération de la classe users
require_once("models/class.users.php");
require_once("models/class.connexion.php");
require_once("models/class.crypt.php");

// création d'un objet USER pour l'authentification
$login = new User();
$c= new Crypt();
if (isset($_SESSION['user_rank'])) {
	if ($_SESSION['user_rank']=="1") {
	$login->redirect('interface_president.php'); }
	else if ($_SESSION['user_rank']=="2") {
	$login->redirect('interface_resp.php'); }
}

// récupération des données saisies à partir du formulaire/gestion des exceptions des connexions/redirection selon le grade vers la page associé

if(isset($_POST['btn-login']))
{
	$uname= $c->Cesar(strip_tags($_POST['txt_mat']),5,1,1);
	$upass= sha1($c->Cesar(strip_tags($_POST['txt_pass']),5,1,1));

	if($login->connexion($uname,$upass))
	{
		if($_SESSION['pays']=="DZ"||$_SESSION['user_rank']=="2") {

	if ($_SESSION['user_rank']=="1") {
	$login->redirect('interface_president.php'); 
	$activ=new Connexion();
	$activ->creat($_POST['txt_mat']);

}else if ($_SESSION['user_rank']=="2") {
	$login->redirect('interface_resp.php'); }
}
else { 
$error = "Vous n'avez pas le droit d'accéder à cette app!";
$login->deconnexion();
		}
}		
	else
	{
		$error = "Nom d'utilisateur ou mot de passe incorrect!";
	}
		

}


?>
<!DOCTYPE html>
<html lang="fr">
<head>
	
	<title>Mercato-DZ - Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/lang/Flag_of_Algeria.png"/>
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
<style type="text/css">
	
.switch-lang {
  width: 110px;
  text-align: left;
  cursor: pointer;
  z-index: 50;
  position: absolute;
  top: 20px;
  right: 20px;
}
.switch-lang:hover .lang-dropdown {
  display: block;
}
.switcher-link {
  color: #fff;
}
.switcher-link:hover {
  color: #fff;
}
.current-lang {
  background: #34495e;
  padding: 3px 5px 0px 5px;
  border-radius: 5px;
}
.lang-flag {
  width: 20px;
  display: inline-block;
}
.lang-text {
  display: inline-block;
  margin-left: 5px;
  vertical-align: top;
  margin-top: 2px;
  font-weight: bolder;
}


.lang-text a {
	text-decoration: none;

}

.lang-dropdown {
  display: none;
  background: #34495e;
  border-radius: 5px;
  margin-top: 2px;
}
.selecting-lang {
  padding: 3px 5px 3px 5px;
  cursor: pointer;
}
.selecting-lang:hover {
  background: #22313f;
}
ul > :first-child {
  border-radius: 5px 5px 0px 0px;
}
ul > :last-child {
  border-radius: 0px 0px 5px 5px;
}
li {
  list-style-type: none;
}
.menu-arrow {
  display: inline-block;
  width: 10px;
  margin-left: 10px;
  vertical-align: top;
  margin-top: 6px;
}




</style>
</head>
<body>




	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg_soccer.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50" >
				<span class="login100-form-title p-b-41">

					<img src="images/logo_mercato_dz.png" alt="pfe" style="width:30%;text-align:left;" />
					<p style="font-family: 'Bauhaus 93', cursive;text-shadow: 2px 2px 30px #FFFFFF;color: #FFFFFF;font-size:20px">Transfert des joueurs</p>
					
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

					<div class="wrap-input100 validate-input" data-validate = "Insérer votre nom d'utilisateur">
						<input class="input100" type="text" name="txt_mat" placeholder="Nom d'utilisateur" value="Mohamed Hireche">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Insérer mot de passe">
						<input class="input100" type="password" name="txt_pass" placeholder="Mot de passe" value="MotDePasse15">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="container-login100-form-btn m-t-32 form-group">
						<button type="submit" name="btn-login" class="login100-form-btn ">
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