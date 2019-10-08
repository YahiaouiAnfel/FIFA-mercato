<?php
require_once(__DIR__.'/../models/class.connexion.php');
require_once(__DIR__.'/../models/class.transfert_attente.php');
require_once(__DIR__.'/../models/class.transfert.php');
require_once(__DIR__.'/../models/class.players.php');
require_once(__DIR__.'/../models/class.crypt.php');
include(__DIR__.'/../view/header_resp.php');
include(__DIR__.'/../view/sidebar_resp.php');
include(__DIR__.'/../view/interface_resp_accueil.php');


$p =new Player();
$b=new TransfertA();
$c=new Crypt();


if (isset($_GET['id'])) {
$id=$_GET['id'];
$p =new Player();
$pp=$p->recherche($id);
$player=$pp->fetch();

}




if (isset($_POST['ajo'])) {
$tr=new Transfert();
$b=new TransfertA();
$bb=$b->recherche($_GET['id']);
$d=$bb->fetch();
$b->setIdp($d['id_player']);
$b->setIdpr($d['id_president']);
$b->setFromc($d['from_c']);
$b->setToc($d['to_c']);
$b->setCost($d['cost']);
$b->setDate($d['date']);
$tr->insert($b);
$b->suppressionTA($d['id_transfer']);

}



if (isset($_POST['sup'])) {
$b=new TransfertA();
$bb=$b->recherche($_GET['id']);
$d=$bb->fetch();
$b->suppressionTA($d['id_transfer']);
}




?>
