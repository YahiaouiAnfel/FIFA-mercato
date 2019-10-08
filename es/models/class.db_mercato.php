<?php
               
    class database{
        public $_db;
        private $HOST = 'localhost';
        private $PORT = '3306';
        private $DBNAME = 'db';
        private $USERNAME = 'root';
        private $PASSWORD = '';

        public function __construct(){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->DBNAME;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }

        /**public function connexion_BDD($pays){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->$pays;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }*/
        
        public function query($req,$param,$ret=true){
            try {
                $stmt = $this->_db->prepare($req);
                if (($err=$stmt->execute($param))) {
                    if ($ret) {
                        return array($err,$stmt->fetchAll());
                    }
                }
                return array($err);
            }catch (PDOException $e){
                return array(false,$e);
            }

        }


    }



    class databaseuk{
        public $_db;
        private $HOST = 'localhost';
        private $PORT = '3306';
        private $DBNAME = 'fifa-uk';
        private $USERNAME = 'root';
        private $PASSWORD = 'root';

        public function __construct(){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->DBNAME;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }

        /**public function connexion_BDD($pays){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->$pays;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }*/
        
        public function query($req,$param,$ret=true){
            try {
                $stmt = $this->_db->prepare($req);
                if (($err=$stmt->execute($param))) {
                    if ($ret) {
                        return array($err,$stmt->fetchAll());
                    }
                }
                return array($err);
            }catch (PDOException $e){
                return array(false,$e);
            }

        }


    }


    class databasefr{
        public $_db;
        private $HOST = 'localhost';
        private $PORT = '3306';
        private $DBNAME = 'fifa-fr';
        private $USERNAME = 'root';
        private $PASSWORD = 'root';

        public function __construct(){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->DBNAME;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }

        /**public function connexion_BDD($pays){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->$pays;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }*/
        
        public function query($req,$param,$ret=true){
            try {
                $stmt = $this->_db->prepare($req);
                if (($err=$stmt->execute($param))) {
                    if ($ret) {
                        return array($err,$stmt->fetchAll());
                    }
                }
                return array($err);
            }catch (PDOException $e){
                return array(false,$e);
            }

        }


    }

    class databasees{
        public $_db;
        private $HOST = 'localhost';
        private $PORT = '3306';
        private $DBNAME = 'fifa-es';
        private $USERNAME = 'root';
        private $PASSWORD = 'root';

        public function __construct(){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->DBNAME;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }

        /**public function connexion_BDD($pays){
            try {
                $this->_db = new PDO("mysql:host=$this->HOST;dbname=$this->$pays;charset=utf8", $this->USERNAME, $this->PASSWORD); 
               
            } catch (PDOException $e){ 
                return null;
            }
        }*/
        
        public function query($req,$param,$ret=true){
            try {
                $stmt = $this->_db->prepare($req);
                if (($err=$stmt->execute($param))) {
                    if ($ret) {
                        return array($err,$stmt->fetchAll());
                    }
                }
                return array($err);
            }catch (PDOException $e){
                return array(false,$e);
            }

        }


    }
