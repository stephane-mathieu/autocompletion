<?php
require_once('Model_Voiture.php');

$id = $_GET['id'];

$root = new Voiture();


$tab = $root->resultelement($id);

?>