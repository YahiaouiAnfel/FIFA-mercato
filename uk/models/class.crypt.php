<?php
require_once 'class.db_mercato.php';
require_once 'class.players.php';

class Crypt
{

//constructeur
        public function __construct(){

        }
 
function Cesar($chaine,$choix,$pos,$mode){
$test="abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTVWXYZ";
	if($mode!="0"){$pos=-$pos;}
	for($i=0;$i<strlen($chaine);$i++){
		if(strpos($test, $chaine[$i]) !== false){
		$j=strpos($test,substr($chaine,$i,1));

			if($pos=="-1"){
			$j -= $choix;
			while($j<0){$j +=strlen($test);}
			}

			else{ 
			$j += $choix;
			while($j+1>strlen($test)){$j -=strlen($test);}
			}
	
		$chaine[$i]=$test[$j];
		}
	}
	return $chaine;

}
  

}  

?>