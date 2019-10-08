<?php
require_once 'class.db_mercato.php';


class Connexion
{

	private $user_name;

	
//constructeur
        public function __construct(){

        }
 

// methode recherche .. return(0 si nn / 0< si oui ) 
	public function exist($s)
	{
        $cnx=new database();

		$req = $cnx->_db->prepare('SELECT * FROM connexion WHERE user_name = ?');
		$req->execute(array($s));
		$reqmail_result = $req->rowCount();		

		if ($reqmail_result==0) {
			return false;
		}else return true;
	}


 
	public function creat($user_name)
	{
		$cnx=new database();

		$req = $cnx->_db->prepare('INSERT INTO `connexion`( `user_name`) VALUES (:user_name)');
			$req_r= $req->execute(array(
				'user_name' => $user_name
					));
		if ($req_r) {
			return true;
		}else return false;
	}

// afficher tt les infos des personnelle  qui ont badge(return un requette qui a tt le tableau Gpersonnelle et la derouler avec une boucle  )

	public function getConnexion()
	{
		$cnx=new database();
		
		$req = $cnx->_db->query('SELECT * FROM connexion ORDER BY ID');	
		// $req_q=$req->fetch();		
		
		return $req;
	}


// supprission 


		public function deconnexion($s)
	{
	    $cnx=new database();
		$req = $cnx->_db->prepare('DELETE  FROM connexion WHERE user_name = ? ');
		$req_r=$req->execute(array($s));	
		// $rf=$req_r->fetch(); 

		if ($req_r) {
			return true;
		}else return false;	
	}





//les geters
	public function getId()      	{  return $this->id_user;       }
	public function getUserName()   	{  return $this->name_user;    }
	public function getGrade()   	{  return $this->grade;    }
	public function getRank()	{  return $this->rank; }
	
//les seters
	public function setUserName($id_user)      	{   $this->id_user=$id_user;       }
	public function setGrade($grade)	{   $this->grade=$grade; }
	public function setRank($rank)	{   $this->rank=$rank; }
	

	 
}

?>