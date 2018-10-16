<?php
	include "config.php";
	require "db.php";
	$manu_ID = $_GET['manu_ID'];
	$db = new Db;

	$delete = $db->deletemanufactures($manu_ID);
	header('location:manufactures.php');
?>