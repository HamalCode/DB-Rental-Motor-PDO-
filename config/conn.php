<?php 
	$server 	= "localhost";
	$user 		= "root";
	$pass 		= "";
	$port 		= "3306";
	$db 		= "db_rentalmotor";

	try{
		$mietib = new PDO('mysql:server='.$server.';dbname='.$db.';port='.$port.'; charset=utf8mb4;',$user, $pass);
		$mietib->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}catch(PDOException $e){
		echo "Koneksaun Error ".$e->getCode(); 
	}


?>