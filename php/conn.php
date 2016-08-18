<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "it255-dz8";
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
die("ERROR: ".$conn->connect_error);
}
?>