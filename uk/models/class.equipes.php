<?php
 require_once 'class.db.php';

/**
* 
*/
class MGvoiturs{

	//constructeur 
	function __construct(){    }

	// methode d'ajou.. return bool (succes true /erreur false )
	public function creat(Gvoiturs &$p)
	{
		$cnx=new database();

		$req = $cnx->_db->prepare('INSERT INTO gvoitures ( IMatV, IMatP, INomV) VALUES (:matv,:matp,:nomv)');
			$req_r= $req->execute(array(
				'matp' => $p->getImatp(),
				'matv' => $p->getImatv(),
				'nomv' => $p->getInomv()
					));
		if ($req_r) {
			return true;
		}else return false;
	}

	// si il existe ce matricule de personnelle 
		public function existp($s)
	{
        $cnx=new database();

		$req = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE IMatP = ?');
		$req->execute(array($s));		
		$reqmail_result = $req->rowCount();
			if ($reqmail_result==0) {
				return false;
			}else return true;
	}


	// methode recherche .. ( n'exist pas 0/ exist =>1)
	public function exist($s)
	{
		$cnx=new database();

		$reqmail = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE IMatV = ?');
		$reqmail->execute(array($s));
		$reqmail_result = $reqmail->rowCount();
		if ($reqmail_result==0) {
			return true;
		}else return false;
		
	}


	//methode suppression .. return bool 

	// methode de recherche par rapport matricule (return requette/ un tableau )
	public function recherche( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE IMatP = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}



	// methode de recherche par rapport matricule de voiture (return requette/ un tableau )
	public function rechercheVv($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE IMatV = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}


// rechercher avec nom et matricule
	public function rechercheNM( $m,$n)
	{
	    $cnx=new database();
	    
		$req = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE IMatP = ? AND INomV=?');
		$r=$req->execute(array($m,$n));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}


	//  modification par rapport  ID  (return requette/ un tableau )
	public function modifV($Id,$Inomv,$Imatv)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('UPDATE gvoitures SET IMatV = :matv, INomV = :nomv WHERE ID = :id');
		$req->execute(array(
			'matv'=> $Imatv,
			'nomv'=>$Inomv,
			'id'=>$Id

		));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}

// ---------------------
	public function rechercheV( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM gvoitures WHERE ID = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}
// afficher tt les infos des personnelle  (return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )
	public function getPerso()
	{
		$cnx=new database();
		
		$req = $cnx->_db->query('SELECT * FROM gvoitures');	
		// $req_q=$req->fetch();		
		
		return $req;
	}

//fonction pour supprimer l utilisateur et ses voitures 

	public function supprissionP($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM gvoitures WHERE IMatP = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		if ($req_r) {
			return true;
		}else return false;	
	}

//fonction pour supprimer une voiture pou un utilisateur

	public function supprissionV($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM gvoitures WHERE ID = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		if ($req_r) {
			return true;
		}else return false;	
	}




}
?> 