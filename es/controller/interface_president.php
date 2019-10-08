<?php
require_once(__DIR__.'/../models/class.connexion.php');
require_once(__DIR__.'/../models/class.transfert_attente.php');
require_once(__DIR__.'/../models/class.transfert.php');
require_once(__DIR__.'/../models/class.joueurs.php');
require_once(__DIR__.'/../models/class.crypt.php');

include(__DIR__.'/../view/header_president.php');
include(__DIR__.'/../view/sidebar_president.php');
include(__DIR__.'/../view/interface_president.php');;


    function __autoload($class_name) {
        try{
            require_once('../models/' . $class_name . '.php');
        }catch(Exception $ex){ }
    }

?>
