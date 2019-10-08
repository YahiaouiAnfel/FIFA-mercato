<?php
require_once 'class.db_mercato.php';

/**
* HELLO HELLO ICI C'EST LA CLASSE jugadores
*/
class Jugadore 
{
	private $id_jugador;
	private $apellido_jugador;
	private $fecha_finalizacion_contrato;
	private $precio_rompiendo_contrato;
	private $puntuacion_jugador;
	private $equipo_jugador;
	private $velocidad_jugador;
	private $regate_jugador;
	private $disparo_jugador;
	private $defensa_jugador;
	private $rendimiento_fisico;
	private $posicion_jugador;
	private $pases_jugador;
	private $pagar_jugador;
	private $pic;
	private $pic1;
	private $pic2;
	private $pic3;
	private $crypt;

//constructeur
        public function __construct(){
        }

        public function t($i){
		$cnx=new databasees();
		
		$req = $cnx->_db->prepare('SELECT *  jugadores WHERE $id_jugador= ?');
		$req->execute(array($i));
		$rf=$req->fetch(); 
return $rf['apellido_jugador'];
		        }

// methode de creation  
	public function creation(Jugador &$p)
	{
		$cnx=new databasees();
		
		$req = $cnx->_db->prepare('INSERT INTO jugadores ( apellido_jugador,fecha_finalizacion_contrato,precio_rompiendo_contrato,puntuacion_jugador,equipo_jugador,velocidad_jugador,regate_jugador,disparo_jugador,defensa_jugador,rendimiento_fisico,posicion_jugador,pases_jugador,pagar_jugador,pic,crypt) VALUES (:nomj,:dfc,:prc,:sj,:ej,:vj,:dj,:tj,:dfj,:pp,:pj,:paj,:saj,:pic)');
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
        $cnx=new databasees();

		$req = $cnx->_db->prepare('SELECT * FROM jugadores WHERE id_jugador = ?');
		$req->execute(array($s));		
		$reqmail_result = $req->rowCount();
			if ($reqmail_result==0) {
				return true;
			}else return false;
	}

// methode recherche l'existance du joueur avec son nom return(false si nn / true si oui ) 
	public function existN($s)
	{
        $cnx=new databasees();

		$req = $cnx->_db->prepare('SELECT * FROM jugadores WHERE apellido_jugador = ?');
		$req->execute(array($s));		
		$reqmail_result = $req->rowCount();
			if ($reqmail_result==0) {
				return true;
			}else return false;
	}

// methode de recherche  de joueur par id (return requette/ un tableau )
	public function recherche( $s)
	{
	    $cnx=new databasees();
		$req = $cnx->_db->prepare('SELECT * FROM jugadores WHERE id_jugador = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche par équipe (return requette/ un tableau )
	public function rechercheE( $e)
	{
	    $cnx=new databasees();
		$req = $cnx->_db->prepare('SELECT * FROM jugadores WHERE equipo_jugador = ?');
		$req->execute(array($e));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche par nom (return requette/ un tableau )
	public function rechercheN( $e)
	{
	    $cnx=new databasees();
		$req = $cnx->_db->prepare('SELECT apellido_jugador FROM jugadores WHERE id_jugador = ?');
		$req->execute(array($e));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// afficher tt les infos des jugadores  (return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )
	public function getJoueur()
	{
		$cnx=new databasees();
		
		$req = $cnx->_db->query('SELECT * FROM jugadores');	
		// $req_q=$req->fetch();		
		return $req;
	}


	//fonction supprimer un joueur
	public function suppression($s)
	{
	    $cnx=new databasees();
		$req = $cnx->_db->prepare('DELETE  FROM jugadores WHERE id_jugador = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		if ($req_r) {
			return true;
		}else return false;	
	}


//modification d'un agent
	public function modifJ($idjoueur,$nomj,$dfc,$prc,$sj,$ej,$vj,$dj,$tj,$dfj,$pp,$pj,$paj,$saj)
	{

	    $cnx=new databasees();
		$req = $cnx->_db->prepare('UPDATE jugadores SET apellido_jugador = :nomj,fecha_finalizacion_contrato = :dfc,precio_rompiendo_contrato = :prc,puntuacion_jugador = :sj,equipo_jugador = :ej,velocidad_jugador = :vj,regate_jugador = :dj,disparo_jugador = :tj,defensa_jugador = :dfj,rendimiento_fisico = :pp,posicion_jugador = :pj,pases_jugador = :paj,pagar_jugador = :saj WHERE id_jugador = :idjoueur');
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
					'saj' => $saj)); 
		return 	$req;
	}
				

//LES GETTERS
	public function getId()      	{  return $this->id_jugador;       }
	public function getNomj()   	{  return $this->apellido_jugador;    }
	public function getDfc()   	{  return $this->fecha_finalizacion_contrato;    }
	public function getPrc()	{  return $this->precio_rompiendo_contrato; }
	public function getSj()     	{  return $this->puntuacion_jugador;      }
	public function getEj()     	{  return $this->equipo_jugador;      }
	public function getVj()   	{  return $this->velocidad_jugador;    }
	public function getDj()   	{  return $this->regate_jugador;    }
	public function getTj()   	{  return $this->disparo_jugador;    }
	public function getDfj()   	{  return $this->defensa_jugador;    }
	public function getPp()   	{  return $this->rendimiento_fisico;    }
	public function getPj()   	{  return $this->posicion_jugador;    }
	public function getPaj()   	{  return $this->pases_jugador;    }
	public function getSaj()   	{  return $this->pagar_jugador;    }
	public function getCrypt()   	{  return $this->crypt;    }
	public function getPic()   	{  return $this->pic;    }
	public function getPic1()     	{  return $this->pic1;      }
	public function getPic2()     	{  return $this->pic2;      }
	public function getPic3()     	{  return $this->pic3;      }

// LES SETTERS																																									
	public function setNomj($apellido_jugador)   	{   $this->apellido_jugador=$apellido_jugador;    }
	public function setDfc($fecha_finalizacion_contrato)   	{ $this->fecha_finalizacion_contrato=$fecha_finalizacion_contrato;    }
	public function setPrc($precio_rompiendo_contrato)	{  $this->precio_rompiendo_contrato=$precio_rompiendo_contrato; }
	public function setSj($puntuacion_jugador)     	{  $this->puntuacion_jugador=$puntuacion_jugador;      }
	public function setEj($equipo_jugador)     	{  $this->equipo_jugador=$equipo_jugador;      }
	public function setVj($velocidad_jugador)   	{  $this->velocidad_jugador=$velocidad_jugador;    }
	public function setDj($regate_jugador)   	{  $this->regate_jugador=$regate_jugador;    }
	public function setTj($disparo_jugador)   	{  $this->disparo_jugador=$disparo_jugador;    }
	public function setDfj($defensa_jugador)   	{ $this->defensa_jugador=$defensa_jugador;    }
	public function setPp($rendimiento_fisico)   	{  $this->rendimiento_fisico=$rendimiento_fisico;    }
	public function setPj($posicion_jugador)   	{  $this->posicion_jugador=$posicion_jugador;    }
	public function setPaj($pases_jugador)   	{  $this->pases_jugador=$pases_jugador;    }
	public function setSaj($pagar_jugador)   	{  $this->pagar_jugador=$pagar_jugador;    }
	public function setCrypt($crypt)   	{  $this->crypt;    }
	public function setPic($pic)   	{  $this->pic;    }
	public function setPic1($pic1)          	{   $this->pic1=$pic1;           }
	public function setPic2($pic2)          	{   $this->pic2=$pic2;           }
	public function setPic3($pic3)          	{   $this->pic3=$pic3;           }
	 
}

?>