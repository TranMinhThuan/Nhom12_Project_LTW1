<?php
require "config.php";
require "db.php";
if(isset($_POST['manu_name']))
		{
			$manu_name = $_POST['manu_name'];
			$image = $_FILES["fileUpload"]["name"];
			$db = new Db;
			
			$db->insertManufactures($manu_name,$image);
			$targetDir = "images";
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
			header("location:manufactures.php");
			}
			header("location:manufactures.php");
		}
?>