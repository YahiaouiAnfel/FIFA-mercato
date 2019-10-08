<?php
 require_once 'class.db_mercato.php';
 require_once 'class.crypt.php';

class User
{
	private $id_user;
	private $name_user;
	private $passw_user;
	private $grade;
	private $rank;
	private $crypt;
	private $pic1;
	private $pic2;
	private $pic3;

//CONSTRUCTEUR
        public function __construct(){

        }

        public function creat(User &$p){
	        	$cnx=new database();

				$upload_dir=(__DIR__.'/../img/joueurs/');
				$imgExt=strtolower(pathinfo($p->getPic1(),PATHINFO_EXTENSION));

		 		$valid_extension=array('gif','jpeg','jpg','png');
				$picP=rand(1000,1000000).".".$imgExt;
				
				move_uploaded_file($p->getPic2(),$upload_dir.$picP);

			$req = $cnx->_db->prepare('INSERT INTO users ( name_user, passw_user,grade,rank,pic ) VALUES (:user_name,:motp,:gra ,:ran ,:pho)');
					$req_r= $req->execute(array(
						'user_name' => $p->getUserName(),
						'motp' => $p->getpassw_user() ,
						'gra' => $p->getGrade(),
						'ran' => $p->getRank(),
						'pho' => $picP
					));

			if ($req_r) {
				return true;
			}else return false;
        }


	public function runQuery($sql)
	{
				$cnx=new database();

		$stmt = $cnx->_db->prepare($sql);
		return $stmt;
	}


	public function connexion($name_user,$mpass)
	{
		try
		{
			$cnx=new database();

			$stmt = $cnx->_db->prepare("SELECT * FROM users WHERE name_user=?");
			$stmt->execute(array($name_user));
			$userRow=$stmt->fetch();
			if($stmt->rowCount() == 1)
			{
				if($mpass==$userRow['passw_user']) 
				{
					$_SESSION['user_id'] = $userRow['id_user'];
					$_SESSION['user_name'] = $userRow['name_user'];
				    $_SESSION['user_grade'] = $userRow['grade'];
				    $test = new Crypt();
				    $club=$test->Cesar(strip_tags($userRow['name_team']),5,1,0);
				    $_SESSION['club'] = $club;
				    $_SESSION['user_rank'] = $userRow['rank'];
				    $_SESSION['pays'] = $userRow['country'];	
					return true;
				}
				else
				{
					$error="Mot de passe incorrect!";
					return false;
				}
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}



	public function is_loggedin()
	{
		if(isset($_SESSION['user_id']))
		{
			return true;
		} 
	}
	public function redirect($url)
	{
		header("Location: $url");
	}
	
	public function deconnexion()
	{
		session_destroy();
		unset($_SESSION['user_session']);
		return true;
	}

//les geters
	public function getId()      	{  return $this->id_user;       }
	public function getUserName()   	{  return $this->name_user;    }
	public function getGrade()   	{  return $this->grade;    }
	public function getRank()   	{  return $this->rank;    }
	public function getPic1()     	{  return $this->pic1;      }
	public function getPic2()     	{  return $this->pic2;      }
	public function getPic3()     	{  return $this->pic3;      }
	public function getPassword()     	{  return $this->passw_user;      }
//les seters
	public function setUserName($name_user)      	{   $this->name_user=$name_user;       }
	public function setGrade($grade)     	{   $this->grade=$grade;       }
	public function setRank($rank)     	{   $this->rank=$rank;       }
	public function setPassword($passw_user)	{   $this->passw_user=$passw_user; }
	public function setPic1($pic1)          	{   $this->pic1=$pic1;           }
	public function setPic2($pic2)          	{   $this->pic2=$pic2;           }
	public function setPic3($pic3)          	{   $this->pic3=$pic3;           }




// methode recherche .. return(0 si nn / 0< si oui ) 
	public function exist($s)
	{
        $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM users WHERE name_user = ?');
		$req->execute(array($s));
		$reqmail_result = $req->rowCount();		
		if ($reqmail_result==0) {
			return true;
		}else return false;
	}


// methode de recherche  (return requette/ un tableau )
	public function rechercheM($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM users WHERE name_user = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}

// methode de recherche  (return requette/ un tableau )
	public function recherche( $s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('SELECT * FROM users WHERE id_user = ?');
		$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		return 	$req;
	}
	


// afficher tt les infos des personnelle  (return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )
	public function getUser()
	{
		$cnx=new database();
		$req = $cnx->_db->query('SELECT * FROM users');	
		// $req_q=$req->fetch();		
		return $req;
	}

		//fonction supprimer un utilisateur
	public function suppression_user($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM users WHERE id_user = ?');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 
		if ($req_r) {
			return true;
		}else return false;	
	}




	

//modification d'un utilisateur
	public function modif_user($Id,$INM,$IG,$IMP)
	{

	    $cnx=new database();
		$req = $cnx->_db->prepare('UPDATE users SET name_user = :username, passw_user = :motp, rank = :ran WHERE id_user = :id');
		
		$req->execute(array(
			'motp'=> $IMP,
			'username'=>$INM,
			'id'=>$Id,
			'ran'=>$IG

		));	
		// $rf=$req_r->fetch(); 

		return 	$req;
	}







	 
}

?>