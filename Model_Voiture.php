<?php

class Voiture{

    public $pdo;

    public function __construct(){
    $pdo = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);

    $this->pdo = $pdo;

    }
    public function searchstart($voiture){

        $tab = array(
            'start' => [],
            'contain'=>[]
        );
            $query = $this->pdo->prepare("SELECT * FROM `Voiture_Japonaises` WHERE Nom LIKE CONCAT ('$voiture','%')");
            $query->setFetchMode(\PDO::FETCH_ASSOC);
            $query->execute();
            $voiturestart=$query->fetchall();
        
            if(!empty($voiturestart)){
                $tab = array(
                    'start' => $voiturestart,
                    'contain'=> []
                );
            }
        
        
            $query = $this->pdo->prepare("SELECT * FROM `Voiture_Japonaises` WHERE Nom LIKE CONCAT ('%','$voiture','%')");
            $query->setFetchMode(\PDO::FETCH_ASSOC);
            $query->execute();
            $contain=$query->fetchall();
          
            if(!empty($contain)){
                $tab = array(
                    'start' => $voiturestart,
                    'contain'=> $contain
                );
            }
            for($i = 0; $i< $tab['contain'][$i];$i++){
                foreach($tab['start'] as $element){
                    if($element['Nom'] == $tab['contain'][$i]['Nom']){
                        array_splice($tab['contain'],$i,1);
                    }
                }
            }
        
        return $tab;
    }
 
}
