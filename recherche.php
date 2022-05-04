<?php
$pdo = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);

$voiture = $_GET['voiture'];
$query = $pdo->prepare("SELECT * FROM `Voiture_Japonaises` where Nom = '$voiture'");
$query->setFetchMode(\PDO::FETCH_ASSOC);
$query->execute();
$user=$query->fetchall();
var_dump($user);
?>