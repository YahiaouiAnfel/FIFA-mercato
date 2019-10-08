<?php
require_once 'class.db_mercato.php';

/**
* HELLO HELLO ICI C'EST LA CLASSE player
*/
class Player 
{
	private $id_player;
	private $name_player;
	private $date_end_contract;
	private $price_breach_contract;
	private $score_player;
	private $team_player;
	private $country;
	private $speed_player;
	private $dribbling_player;
	private $shooting_player;
	private $defense_player;
	private $physical_performance;
	private $position_player;
	private $passes_player;
	private $salary_player;
	private $pic;
	private $pic1;
	private $pic2;
	private $pic3;
	private $crypt;

//constructeur
        public function __construct(){
        }

        public function t($i){
		$cnx=new database();
		
		$req = $cnx->_db->prepare('SELECT *  players WHERE $id_player= ?');
		$req->execute(array($i));
		$rf=$req->fetch(); 
return $rf['name_player'];
		        }

// methode de creation  
	public function creation(Player &$p)
	{
		$cnx=new database();
		
		$req = $cnx->_db->prepare('INSERT INTO players ( name_player,date_end_contract,price_breach_contract,score_player,team_player,speed_player,dribbling_player,shooting_player,defense_player,physical_performance,position_player,passes_player,salary_player,pic,crypt) VALUES (:nomj,:dfc,:prc,:sj,:ej,:vj,:dj,:tj,:dfj,:pp,:pj,:paj,:saj,:pic)');
				$req_r= $req->execute(array(
					'nomj' => $p->getNomj(),
					'dfc' => $p->getDfc() ,
					'prc' => $p->getPrc(),
					'sj' => $p->getSj(),
					'ej' => $p->getEj(),
					'vj' => $p->getVj(),
					'dj' => $p->getDj(),
					'tj' => $p->getTj(),
					'dfj' => $p->getDfj(),
					'pp' => $p->getPp(),
					'pj' => $p->getPj(),					
					'paj' => $p->getPaj(),
					'saj' => $p->getSaj(),
					'pic' => $p->getPic()	));

		return $req_r;
	}



public function creation_joueur(Player &$p)
	{
		$cnx=new database();
		
		$req = $cnx->_db->prepare('INSERT INTO players ( name_player,date_end_contract,price_breach_contract,score_player,team_player,speed_player,dribbling_player,shooting_player,defense_player,physical_performance,position_player,passes_player,salary_player,pic,crypt) VALUES (:nomj,:dfc,:prc,:sj,:ej,:vj,:dj,:tj,:dfj,:pp,:pj,:paj,:saj,:pic)');
				$req_r= $req->execute(array(
					'nomj' => $p->getNomj(),
					'dfc' => $p->getDfc() ,
					'prc' => $p->getPrc(),
					'sj' => $p->getSj(),
					'ej' => $p->getEj(),
					'vj' => $p->getVj(),
					'dj' => $p->getDj(),
					'tj' => $p->getTj(),
					'dfj' => $p->getDfj(),
					'pp' => $p->getPp(),
					'pj' => $p->getPj(),					
					'paj' => $p->getPaj(),
					'saj' => $p->getSaj(),
					'pic' => $p->getPic()	));

		return $req_r;
	}


// methode recherche l'existance du joueur return(false si nn / true si oui ) 
	public function exist($s)
	{
        $cnx=new database();

		$req = $cnx->_db->prepare('SELECT * FROM players WHERE id_player = ?');
		$req->execute(array($s));		
		$reqmail_result = $req->rowCount();
			if ($reqmail_result==0) {
				return true;
			}else return false;
	}

// methode recherche l'existance du joueur avec son nom return(false si nn / true si oui ) 
	public function existN($s)
	{
        $cnx=new database();

		$req = $cnx->_db->prepare('SELECT * FROM players WHERE name_player = ?');
		$req->execute(array($s));		
		$reqmail_result = $req->rowCount();
			if ($reqmail_result==0) {
				return true;
			}else return false;
	}

// methode de recherche  de joueur par id (return requette/ un tableau )
	public function recherche( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM players WHERE id_player = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche par équipe (return requette/ un tableau )
	public function rechercheE( $e)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare("SELECT * FROM players WHERE team_player LIKE ?");
		$req->execute(array('%'.$e.'%'));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}


// methode de recherche par équipe (return requette/ un tableau )
	public function rechercheC( $p)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM players WHERE country = ?');
		$req->execute(array($p));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}


// methode de recherche par nom (return requette/ un tableau )
	public function rechercheN( $e)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT name_player FROM players WHERE id_player = ?');
		$req->execute(array($e));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// afficher tt les infos des players  (return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )
	public function getJoueur()
	{
		$cnx=new database();
		
		$req = $cnx->_db->query('SELECT * FROM players');	
		// $req_q=$req->fetch();		
		return $req;
	}


	public function getJoueurP( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM players WHERE country = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}
	public function getJoueurE($e)
	{
		$cnx=new database();
		$test= new User();
		$e= $test->Cesar($e,24,1);
		$req = $cnx->_db->query('SELECT * FROM players WHERE team_player LIKE %e%');	
		// $req_q=$req->fetch();		
		return $req;
	}

	//fonction supprimer un joueur
	public function suppression($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM players WHERE id_player = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		if ($req_r) {
			return true;
		}else return false;	
	}


//modification d'un joueur
	public function modifJ($idjoueur,$nomj,$dfc,$prc,$sj,$ej,$vj,$dj,$tj,$dfj,$pp,$pj,$paj,$saj,$pic,$pic2)
	{

	    $cnx=new database();
				$upload_dir=(__DIR__.'/../img/joueurs/');
				$imgExt=strtolower(pathinfo($pic,PATHINFO_EXTENSION));
		 		$valid_extension=array('gif','jpeg','jpg','png');
				$picP=rand(1000,1000000).".".$imgExt;
				move_uploaded_file($pic2,$upload_dir.$picP);

		$req = $cnx->_db->prepare('UPDATE players SET name_player = :nomj,date_end_contract = :dfc,price_breach_contract = :prc,score_player = :sj,team_player = :ej,speed_player = :vj,dribbling_player = :dj,shooting_player = :tj,defense_player = :dfj,physical_performance = :pp,position_player = :pj,passes_player = :paj,salary_player = :saj, pic = :pic WHERE id_player = :idjoueur');
		$req->execute(array(
					'idjoueur' => $idjoueur,
					'nomj' => $nomj,
					'dfc' => $dfc ,
					'prc' => $prc,
					'sj' => $sj,
					'ej' => $ej,
					'vj' => $vj,
					'dj' => $dj,
					'tj' => $tj,
					'dfj' => $dfj,
					'pp' => $pp,
					'pj' => $pj,					
					'paj' => $paj,
					'saj' => $saj,
					'pic' => $picP
				)); 
		return 	$req;
	}
				

//LES GETTERS
	public function getId()      	{  return $this->id_player;       }
	public function getNomj()   	{  return $this->name_player;    }
	public function getDfc()   	{  return $this->date_end_contract;    }
	public function getPrc()	{  return $this->price_breach_contract; }
	public function getSj()     	{  return $this->score_player;      }
	public function getEj()     	{  return $this->team_player;      }
	public function getCj()     	{  return $this->country;      }
	public function getVj()   	{  return $this->speed_player;    }
	public function getDj()   	{  return $this->dribbling_player;    }
	public function getTj()   	{  return $this->shooting_player;    }
	public function getDfj()   	{  return $this->defense_player;    }
	public function getPp()   	{  return $this->physical_performance;    }
	public function getPj()   	{  return $this->position_player;    }
	public function getPaj()   	{  return $this->passes_player;    }
	public function getSaj()   	{  return $this->salary_player;    }
	public function getCrypt()   	{  return $this->crypt;    }
	public function getPic()   	{  return $this->pic;    }
	public function getPic1()     	{  return $this->pic1;      }
	public function getPic2()     	{  return $this->pic2;      }
	public function getPic3()     	{  return $this->pic3;      }

// LES SETTERS																																					
	public function setId($id_player)   	{   $this->id_player=$id_player;    }
	public function setNomj($name_player)   	{   $this->name_player=$name_player;    }
	public function setDfc($date_end_contract)   	{ $this->date_end_contract=$date_end_contract;    }
	public function setPrc($price_breach_contract)	{  $this->price_breach_contract=$price_breach_contract; }
	public function setSj($score_player)     	{  $this->score_player=$score_player;      }
	public function setEj($team_player)     	{  $this->team_player=$team_player;      }
	public function setCj($country)     	{  $this->country=$country;      }
	public function setVj($speed_player)   	{  $this->speed_player=$speed_player;    }
	public function setDj($dribbling_player)   	{  $this->dribbling_player=$dribbling_player;    }
	public function setTj($shooting_player)   	{  $this->shooting_player=$shooting_player;    }
	public function setDfj($defense_player)   	{ $this->defense_player=$defense_player;    }
	public function setPp($physical_performance)   	{  $this->physical_performance=$physical_performance;    }
	public function setPj($position_player)   	{  $this->position_player=$position_player;    }
	public function setPaj($passes_player)   	{  $this->passes_player=$passes_player;    }
	public function setSaj($salary_player)   	{  $this->salary_player=$salary_player;    }
	public function setCrypt($crypt)   	{  $this->crypt;    }
	public function setPic($pic)   	{  $this->pic;    }
	public function setPic1($pic1)          	{   $this->pic1=$pic1;           }
	public function setPic2($pic2)          	{   $this->pic2=$pic2;           }
	public function setPic3($pic3)          	{   $this->pic3=$pic3;           }
	 
}

?>