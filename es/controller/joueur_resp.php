<?php
require_once(__DIR__.'/../models/class.players.php');
require_once(__DIR__.'/../models/class.crypt.php');

include(__DIR__.'/../view/header_resp.php');
include(__DIR__.'/../view/sidebar_resp.php');


$c= new Crypt();

if (isset($_POST['supp'])) {

					$p=new Player();
					$pp=$p->recherche($_GET['id']);
					$d=$pp->fetch(); //un tableau

$msg=$p->suppression($d['id_player'])? true : false;
if ($msg) {
echo "oui ";}
}



include("view/joueurs_resp.php");


    function __autoload($class_name) {
        try{
            require_once('../models/' . $class_name . '.php');
        }catch(Exception $ex){ }
    }
?>
