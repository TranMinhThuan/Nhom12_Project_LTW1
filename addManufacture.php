<?php
require "config.php";
require "db.php";
if(isset($_POST['manu_name']))
		{
			$manu_name = $_POST['manu_name'];
			$image = "abc.jmg";
			$db = new Db;
			$db->product3($manu_name,$image);
			header("location:manufactures.php");
		}
?>