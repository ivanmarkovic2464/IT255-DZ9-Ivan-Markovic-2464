<?php
include("conn.php");

function proveriKorisnika($k_ime, $lozinka){
global $conn;
$sql = "SELECT * FROM korisnici WHERE `Korisnicko ime`=? AND `Lozinka`=?";
$stmt= $conn->prepare($sql);
$stmt->bind_param('ss',$k_ime,$lozinka);
$stmt->execute();
$stmt->store_result();
if ($stmt->num_rows > 0) {
return 1;
} else{
return 0;;
}
$stmt->close();
}
?>