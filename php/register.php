<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST');
include("conn.php");
if(isset($_POST['k_ime']) && isset($_POST['lozinka']) && isset($_POST['ime']) &&
isset($_POST['prezime']) && isset($_POST['prezime'])){
	
$k_ime = $_POST['k_ime'];
$lozinka = md5($_POST['lozinka']);
$ime = $_POST['ime'];
$prezime = $_POST['prezime'];
$email = $_POST['email'];

if(!empty($k_ime) && !empty($lozinka) && !empty($ime) && !empty($prezime) && !empty($email)){
$stmt = $conn->prepare("INSERT INTO korisnici (k_ime, lozinka, ime, prezime, email) 
VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $k_ime, $lozinka, $ime, $prezime, $email);
$stmt->execute();
echo "ok";
header("Location: ../app/login/login.html");
}
}
else{
	echo "<script>alert('Popunite sva polja!')</script>";
		header("Location: ../app/registracija/registracija.html");
}

?>