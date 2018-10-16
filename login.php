<?php
session_start();

require "db.php";
require "config.php";
if(isset($_GET['user'])){
	$user = $_GET['user'];
	$pass = $_GET['pass'];
	$db = new Db();
	if($db->login($user, $pass)){
		if(isset($_GET['remember'])){
			setcookie('user',$_GET['user'],time()+3600);
			setcookie('pass',$_GET['pass'],time()+3600);
		}else{
			setcookie('user',$_GET['user'],time()-3600);
			setcookie('pass',$_GET['pass'],time()-3600);
		}
		//echo "Logged in successfully";
		//Luu thong tin vao session
		$_SESSION['user']=$_GET['user'];
		header('location:index.php');
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style type="text/css">
		form .row {
		  display: block;
		  padding: 7px 8px;
		  margin-bottom: 7px;
		}
		form .row:hover {
		  background: #f1f7fa;
		}
		  
		form label {
		  display: inline-block;
		  font-size: 1.2em;
		  font-weight: bold;
		  width: 120px;
		  padding: 6px 0;
		  color: #464646;
		  vertical-align: top;
		}
		form .req { color: #ca5354; }
		  
		form .note {
		  font-size: 1.2em;
		  line-height: 1.33em;
		  font-weight: normal;
		  padding: 2px 7px;
		  margin-bottom: 10px;
		  font-size: 3em;
		}

		form {
			text-align: center;
		}
	</style>
</head>
<body>
<form id="contactform" name="contact" method="get" action="#">
   <p class="note"><span class="req">*</span> LOGIN</p>

  <div class="row">
    <label for="user">Username: <span class="req"></span></label>
    <input type="text" name="user" id="user" class="txt" tabindex="1" required value="<?php echo isset($_COOKIE['user'])?$_COOKIE['user']:"" ?>"><br>
  </div>
  
  <div class="row">
    <label for="password">Password: <span class="req"></span></label>
    <input type="Password" name="pass" id="pass" class="txt" tabindex="2" required value="<?php echo isset($_COOKIE['pass'])?$_COOKIE['pass']:"" ?>"><br>
  </div>

  <input type="checkbox" name="remember">Remember
  <div class="center">
    <input type="submit" id="submitbtn" name="submitbtn" tabindex="5" value="Submit">
  </div>
</form>
</body>
</html>