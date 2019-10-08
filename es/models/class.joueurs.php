<?php
require_once 'class.db_mercato.php';

/**
* HELLO HELLO ICI C'EST LA CLASSE JOUEURS
*/
class Joueur 
{
	private $id_joueur;
	private $nom_joueur;
	private $date_fin_contrat;
	private $prix_repture_contrat;
	private $score_joueur;
	private $equipe_joueur;
	private $vitesse_joueur;
	private $dribbles_joueur;
	private $tirs_joueur;
	private $defense_joueur;
	private $performance_physique;
	private $position_joueur;
	private $passes_joueur;
	private $salaire_joueur;
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
		
		$req = $cnx->_db->prepare('SELECT *  joueurs WHERE $id_joueur= ?');
		$req->execute(array($i));
		$rf=$req->fetch(); 
return $rf['nom_joueur'];
		        }

// methode de creation  
	public function creation_joueur(Joueur &$p)
	{
		$cnx=new database();
				$upload_dir=(__DIR__.'/../img/joueurs/');
				$imgExt=strtolower(pathinfo($p->getPic(),PATHINFO_EXTENSION));
		 		$valid_extension=array('gif','jpeg','jpg','png');
				$picP=rand(1000,1000000).".".$imgExt;	
				move_uploaded_file($p->getPic2(),$upload_dir.$picP);

		$req = $cnx->_db->prepare('INSERT INTO joueurs ( nom_joueur,date_fin_contrat,prix_repture_contrat,score_joueur,equipe_joueur,vitesse_joueur,dribbles_joueur,tirs_joueur,defense_joueur,performance_physique,position_joueur,passes_joueur,salaire_joueur,pic) VALUES (:nomj,:dfc,:prc,:sj,:ej,:vj,:dj,:tj,:dfj,:pp,:pj,:paj,:saj,:pic)');
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
					'pic' => $picP ));

if ($req_r) { echo "joueur ajouté";
				return true;
			}else {echo "joueur non ajouté"; return false;}
	}



// methode recherche l'existance du joueur return(false si nn / true si oui ) 
	public function exist($s)
	{
        $cnx=new database();

		$req = $cnx->_db->prepare('SELECT * FROM joueurs WHERE id_joueur = ?');
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

		$req = $cnx->_db->prepare('SELECT * FROM joueurs WHERE nom_joueur = ?');
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
		$req = $cnx->_db->prepare('SELECT * FROM joueurs WHERE id_joueur = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche par équipe (return requette/ un tableau )
	public function rechercheE( $e)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM joueurs WHERE equipe_joueur = ?');
		$req->execute(array($e));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche par nom (return requette/ un tableau )
	public function rechercheN( $e)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT nom_joueur FROM joueurs WHERE id_joueur = ?');
		$req->execute(array($e));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// afficher tt les infos des joueurs  (return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )
	public function getJoueur()
	{
		$cnx=new database();
		
		$req = $cnx->_db->query('SELECT * FROM joueurs');	
		// $req_q=$req->fetch();		
		return $req;
	}


	//fonction supprimer un joueur
	public function suppression($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM joueurs WHERE id_joueur = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		if ($req_r) {
			return true;
		}else return false;	
	}


//modification d'un agent
	public function modifJ($idjoueur,$nomj,$dfc,$prc,$sj,$ej,$vj,$dj,$tj,$dfj,$pp,$pj,$paj,$saj,$pic,$pic2)
	{

	    $cnx=new database();
				$upload_dir=(__DIR__.'/../img/joueurs/');
				$imgExt=strtolower(pathinfo($pic,PATHINFO_EXTENSION));
		 		$valid_extension=array('gif','jpeg','jpg','png');
				$picP=rand(1000,1000000).".".$imgExt;
				move_uploaded_file($pic2,$upload_dir.$picP);

		$req = $cnx->_db->prepare('UPDATE joueurs SET nom_joueur = :nomj,date_fin_contrat = :dfc,prix_repture_contrat = :prc,score_joueur = :sj,equipe_joueur = :ej,vitesse_joueur = :vj,dribbles_joueur = :dj,tirs_joueur = :tj,defense_joueur = :dfj,performance_physique = :pp,position_joueur = :pj,passes_joueur = :paj,salaire_joueur = :saj,pic = :pic WHERE id_joueur = :idjoueur');
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
	public function getId()      	{  return $this->id_joueur;       }
	public function getNomj()   	{  return $this->nom_joueur;    }
	public function getDfc()   	{  return $this->date_fin_contrat;    }
	public function getPrc()	{  return $this->prix_repture_contrat; }
	public function getSj()     	{  return $this->score_joueur;      }
	public function getEj()     	{  return $this->equipe_joueur;      }
	public function getVj()   	{  return $this->vitesse_joueur;    }
	public function getDj()   	{  return $this->dribbles_joueur;    }
	public function getTj()   	{  return $this->tirs_joueur;    }
	public function getDfj()   	{  return $this->defense_joueur;    }
	public function getPp()   	{  return $this->performance_physique;    }
	public function getPj()   	{  return $this->position_joueur;    }
	public function getPaj()   	{  return $this->passes_joueur;    }
	public function getSaj()   	{  return $this->salaire_joueur;    }
	public function getCrypt()   	{  return $this->crypt;    }
	public function getPic()   	{  return $this->pic;    }
	public function getPic1()     	{  return $this->pic1;      }
	public function getPic2()     	{  return $this->pic2;      }
	public function getPic3()     	{  return $this->pic3;      }

// LES SETTERS																																									
	public function setNomj($nom_joueur)   	{   $this->nom_joueur=$nom_joueur;    }
	public function setDfc($date_fin_contrat)   	{ $this->date_fin_contrat=$date_fin_contrat;    }
	public function setPrc($prix_repture_contrat)	{  $this->prix_repture_contrat=$prix_repture_contrat; }
	public function setSj($score_joueur)     	{  $this->score_joueur=$score_joueur;      }
	public function setEj($equipe_joueur)     	{  $this->equipe_joueur=$equipe_joueur;      }
	public function setVj($vitesse_joueur)   	{  $this->vitesse_joueur=$vitesse_joueur;    }
	public function setDj($dribbles_joueur)   	{  $this->dribbles_joueur=$dribbles_joueur;    }
	public function setTj($tirs_joueur)   	{  $this->tirs_joueur=$tirs_joueur;    }
	public function setDfj($defense_joueur)   	{ $this->defense_joueur=$defense_joueur;    }
	public function setPp($performance_physique)   	{  $this->performance_physique=$performance_physique;    }
	public function setPj($position_joueur)   	{  $this->position_joueur=$position_joueur;    }
	public function setPaj($passes_joueur)   	{  $this->passes_joueur=$passes_joueur;    }
	public function setSaj($salaire_joueur)   	{  $this->salaire_joueur=$salaire_joueur;    }
	public function setCrypt($crypt)   	{  $this->crypt;    }
	public function setPic($pic)   	{  $this->pic;    }
	public function setPic1($pic1)          	{   $this->pic1=$pic1;           }
	public function setPic2($pic2)          	{   $this->pic2=$pic2;           }
	public function setPic3($pic3)          	{   $this->pic3=$pic3;           }
	 
}

?>