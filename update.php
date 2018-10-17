<?php
require "config.php";
require "db.php";
$ID =$_GET['ID'];
$name = $_POST['name'];
$image = $_FILES["fileUpload"]["name"];
$type_id = $_POST['type_id'];
$manu_id = $_POST['manu_id'];
$description = $_POST['description'];
$price = $_POST['price'];
var_dump($ID);
$db = new Db;
$db->update($ID,$name,$image,$description,$price,$manu_id,$type_id);
$targetDir = "D://";
$targetFile = $targetDir.basename($_FILES["fileUpload"]["name"]);
$uploadOK = 1;
$imageFileType=pathinfo($targetFile,PATHINFO_EXTENSION);
if(isset($_POST["submit"]))
{
	$check = getimagesize($_FILES["fileUpload"]["tmp_name"]);
	if($check !== false)
	{
		echo "File is an image".$check["mime"].".";
		$uploadOK=1;
	}
	else
	{
		echo "File is not an image";
		$uploadOK = 0;
	}
}
else
{
header("location:index.php");
}
// header("location:index.php");
?>