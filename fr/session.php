<?php
	session_start();
	require_once("models/class.users.php");
	$session = new User();

	// si l'utilisateur session n'est pas connecte, cette page va aider les autres pages à redirection vers la page de connexion

	if(!$session->is_loggedin())
	{
		// session no set redirects to login page
		$session->redirect('index.php');
	}
	
?>