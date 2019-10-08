<?php
require_once 'class.db_mercato.php';
require_once 'class.players.php';

class TransfertA
{

	private $id_transfer;
	private $id_player;
	private $id_president;
	private $from_c;
	private $to_c;
	private $cost;
	private $date;
	
//constructeur
        public function __construct(){

        }
 

   public function insert(TransfertA &$p)
	{
		$cnx=new database();
		$req = $cnx->_db->prepare('INSERT INTO attente ( id_player,id_president, from_c, to_c, cost, date) VALUES (:idp, :idpr, :fromc, :toc, :cost, :dat)');
			$req_r= $req->execute(array(
				'idp' => $p->getIdp(),
				'idpr' => $p->getIdpr(),
				'fromc' => $p->getFromc(),
				'toc' => $p->getToc(),
				'cost' => $p->getCost(),
				'dat' => $p->getDate(),				
					));
				if ($req_r) { 
					return true;
					}else return false;
	}


   public function insertP(Player &$p,$idp,$ep)
	{
		$cnx=new database();
		$req = $cnx->_db->prepare('INSERT INTO attente (id_player,id_president, from_c, to_c, cost,date) VALUES (:idp, :idpr, :fromc, :toc, :cost, :dat)');
			$req_r= $req->execute(array(
				'idp' => $p->getId(),
				'idpr' => $idp,
				'fromc' => $p->getEj(),
				'toc' => $ep,
				'cost' => $p->getPrc(),
				'dat' => date("Y")			
					));
				if ($req_r) { 
					return true;
					}else return false;
	}
// afficher tt les infos des personnelle  qui ont badge(return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )

	public function getAttente()
	{
		$cnx=new database();
		
		$req = $cnx->_db->query('SELECT * FROM attente ORDER BY id_transfer');	
		// $req_q=$req->fetch();		
		
		return $req;
	}

// recherche par rapport ID
	public function recherche( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM attente WHERE id_transfer = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}
// supprission 


		public function suppressionTA($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM attente WHERE id_transfer = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		if ($req_r) {
			return true;
		}else return false;	
	}




//les geters
	public function getIdt()      	{  return $this->id_transfer;       }
	public function getIdp()      	{  return $this->id_player;       }
	public function getIdpr()      	{  return $this->id_president;       }
	public function getFromc()   	{  return $this->from_c;    }
	public function getToc()   	{  return $this->to_c;    }
	public function getCost()	{  return $this->cost; }
	public function getDate()	{  return $this->date; }
	
//les seters
	public function setIdt($id_transfer)      	{   $this->id_transfer=$id_transfer;       }
	public function setIdp($id_player)     	{   $this->id_player=$id_player;       }
	public function setIdpr($id_president)     	{   $this->id_president=$id_president;       }
	public function setFromc($from_c)	{   $this->from_c=$from_c; }
	public function setToc($to_c)	{   $this->to_c=$to_c; }
	public function setCost($cost)	{   $this->cost=$cost; }	
	public function setDate($date)	{   $this->date=$date; }
	 
}

?>