<?php
require "config.php";
require "db.php"; 
if(isset($_POST['name']))
{
			$name = $_POST['name'];
			$fileUpload ="abc.jmg";;
			$type_id = $_POST['type_id'];
			$manu_id = $_POST['manu_id'];
			$description = $_POST['description'];
			$price = $_POST['price'];
			$db = new Db;
			$db->product5($name,$fileUpload,$description,$price,$manu_id,$type_id);
			header("location:index.php");
			
}

?>