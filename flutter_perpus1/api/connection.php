<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpus_2301082008";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?> 