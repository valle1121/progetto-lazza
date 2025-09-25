<?php
$host = 'localhost';
$user = 'root';
$password = ''; // di solito vuoto su XAMPP
$database = 'lazza_db';

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Connessione al database fallita: " . mysqli_connect_error());
}
?>