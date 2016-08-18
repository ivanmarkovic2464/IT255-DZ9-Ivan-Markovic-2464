<?php
session_start();
include("conn.php");
include("funkcije.php");
if(isset($_POST['login'])){
	
$k_ime = $conn->mysqli_real_escape_string($conn,$_POST['k_ime']);
$lozinka = $conn->mysqli_real_escape_string($conn,$_POST['lozinka']);


$select_user = "SELECT * FROM `korisnici` WHERE `Korisnicko ime`='$k_ime' AND `Lozinka`='$lozinka'";
	$run_user = mysqli_query($conn, $select_user);
	$check_user = mysqli_num_rows($run_user);
if($check_user > 0)
 {
  $_SESSION['k_ime'] = $k_ime;
  header("Location: ../app/mainpage/mainpage.html");
 }
 else {
	 echo "ok";
		header("Location: ../app/login/login.html");
 }
$conn->close();
 }

?>
