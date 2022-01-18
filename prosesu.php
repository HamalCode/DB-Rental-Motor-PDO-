<?php
	include 'config/conn.php';

	$id 				= $_POST["txtId"];
	$naran 			= $_POST["txtNrn"];
	$inc 				= $_POST["txtInc"];
	$obs 				= $_POST["txtObs"];
	$sobre 			= $_POST["sobre"];

	if($sobre=="foun"){
		$Qf=$mietib->query("SELECT * FROM t_motor WHERE id_motor='$id'");
		if($Qf->rowCount()>0){
			echo "<script>alert('Dadus ho Id ida ne\'e registu ona.');</script>";
			echo "<script>window.history.back()</script>";
			return false; 
		} else{
		$Qf=$mietib->query("INSERT INTO t_motor SET 
			id_motor 		= '$id',
			nrn_motor 	= '$naran',
			inc_motor 	= '$inc',
			obs_motor 	= '$obs'");
		}
	}
	if($sobre=="renova"){
		$Qf=$mietib->query("UPDATE t_motor SET 
			id_motor	= '$id',
			nrn_motor 	= '$naran',
			inc_motor 	= '$inc',
			obs_motor 	= '$obs' WHERE id_motor ='$_POST[txtIdE]'");
	}

	if(isset($_GET["sobre"]) && $_GET["sobre"]=="apaga"){
		$Qf=$mietib->query("DELETE FROM t_motor  WHERE id_motor ='$_GET[id]'");
	}

	header('location:index.php');
?>
