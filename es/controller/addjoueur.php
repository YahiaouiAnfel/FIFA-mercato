<?php

require_once(__DIR__.'/../models/class.players.php');
require_once(__DIR__.'/../models/class.users.php');
require_once(__DIR__.'/../models/class.crypt.php');
include(__DIR__.'/../view/header_president.php');
include(__DIR__.'/../view/sidebar_president.php');

$v= new Player();
$r= new Player();
$t=new Crypt();


if ($_GET['a']=="add") {

	if (isset($_POST['cnf']) ) 
	{
		$existj = $v->existN($t->Cesar(strip_tags($_POST['nomj']),24,1,1))? false : true;

		if(!$existj)
		{
			$msg2=true;
			if (isset($_POST['nomj'])) {
			$v->setNomj($t->Cesar(strip_tags($_POST['nomj']),24,1,1));
			$v->setDfc($_POST['dfc']);
			$v->setPrc($t->Cesar(strip_tags($_POST['prc']),24,1,1));
			$v->setSj($t->Cesar(strip_tags($_POST['sj']),24,1,1));
			$v->setEj($t->Cesar(strip_tags($_SESSION['club']),24,1,1));
			$v->setVj($t->Cesar(strip_tags($_POST['vj']),24,1,1));
			$v->setDj($t->Cesar(strip_tags($_POST['dj']),24,1,1));
			$v->setTj($t->Cesar(strip_tags($_POST['tj']),24,1,1));
			$v->setDfj($t->Cesar(strip_tags($_POST['dfj']),24,1,1));
			$v->setPp($t->Cesar(strip_tags($_POST['pp']),24,1,1));
			$v->setPj($t->Cesar(strip_tags($_POST['pj']),24,1,1));
			$v->setPaj($t->Cesar(strip_tags($_POST['paj']),24,1,1));
			$v->setSaj($t->Cesar(strip_tags($_POST['saj']),24,1,1));
			$images=$_FILES['ph']['name'];
			$tmp_dir=$_FILES['ph']['tmp_name'];
			$imageSize=$_FILES['ph']['size'];
			$v->setPic($images);
			$v->setPic2($tmp_dir);
			$v->setPic3($imageSize);
			$msg = $v->creation_joueur($v) ?  true : false;
			}else $msg2=false;	
		}
	}
}


if ($_GET['a']=="edit") {

	if (isset($_POST['cnf']) ) 
	{

			$images=$_FILES['ph']['name'];
			$tmp_dir=$_FILES['ph']['tmp_name'];
		$v->modifJ($_GET['idd'],$t->Cesar(strip_tags($_POST['nomj']),24,1,0),$_POST['dfc'],$t->Cesar(strip_tags($_POST['prc']),24,1,0),$t->Cesar(strip_tags($_POST['sj']),24,1,0),$t->Cesar(strip_tags($_POST['ej']),24,1,0),$t->Cesar(strip_tags($_POST['vj']),24,1,0),$t->Cesar(strip_tags($_POST['dj']),24,1,0),$t->Cesar(strip_tags($_POST['tj']),24,1,0),$t->Cesar(strip_tags($_POST['dfj']),24,1,0),$t->Cesar(strip_tags($_POST['pp']),24,1,0),$t->Cesar(strip_tags($_POST['pj']),24,1,0),$t->Cesar(strip_tags($_POST['paj']),24,1,0),$t->Cesar(strip_tags($_POST['saj']),24,1,0),$images,$tmp_dir); 
		$msg=true;
	}
}

include("view/addjoueur.php");

?>


