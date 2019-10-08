<?php

	require_once('session.php');
	require_once("models/class.users.php");
	require_once("models/class.connexion.php");
	$user_logout = new User();
    $user=new User();
	$userr=$user->recherche($_SESSION['user_id']);
	$user_name=$userr->fetch();


$acty=new Connexion();

	if($user_logout->is_loggedin()!="")
	{
		$user_logout->redirect('index.php');
	}
	if(isset($_GET['logout']) && $_GET['logout']=="true")
	{
		$user_logout->deconnexion();
		
	$acty->deconnexion_user($agent['user_id']);

		$user_logout->redirect('index.php');
	}

?>



