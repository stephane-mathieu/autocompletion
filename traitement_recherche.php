<?php
require_once('Model_Voiture.php');

$voiture = htmlspecialchars($_GET['search']);

$root = new Voiture();

@$tab = $root->searchstart($voiture);

echo json_encode($tab);
