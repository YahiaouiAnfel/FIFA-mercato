<?php
require_once(__DIR__.'/../models/class.joueurs.php');
require_once(__DIR__.'/../models/class.players.php');
require_once(__DIR__.'/../models/class.jugadores.php');
require_once(__DIR__.'/../models/class.transfert_attente.php');
require_once(__DIR__.'/../models/class.crypt.php');

include(__DIR__.'/../view/header_president.php');
include(__DIR__.'/../view/sidebar_president.php');

					$t=new Crypt();

if (isset($_POST['acheter'])) {
					$a=new TransfertA();
					$p=new Player();

					$pp=$p->recherche($_GET['id']);
					$d=$pp->fetch(); 
					$p->setId($d['id_player']);
					$p->setEj($t->Cesar($d['team_player'],24,1,1));
					$p->setPrc($t->Cesar($d['price_breach_contract'],24,1,1));
$msg=$a->insertP($p,$_SESSION['user_id'],$_SESSION['club'])? true : false;
if ($msg) {
echo "oui ";}
}
else {
	echo "non";
}



include("view/mercato.php");



?>
