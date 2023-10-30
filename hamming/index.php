<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine('templates', 'tpl');

function calcolaHamming($stringa1, $stringa2){
    if (strlen($stringa1) != strlen($stringa2)){
        return 'errore lunghezza';
    }
    $cont = 0;
    for ($i = 0; $i < strlen($stringa1); $i++){
        if (($stringa1[$i] == 'C' || $stringa1[$i] == 'A' || $stringa1[$i] == 'G' || $stringa1[$i] == 'T') && ($stringa2[$i] == 'C' || $stringa2[$i] == 'A' || $stringa2[$i] == 'G' || $stringa2[$i] == 'T')){
            $cont += $stringa1[$i] != $stringa2[$i] ? 1 : 0;
        }else return 'errore caratteri';
    }
    return $cont;
}

$risultato = null;

if (isset($_POST['stringa1'])){
    $stringa1 = $_POST['stringa1'];
    $stringa2 = $_POST['stringa2'];
    $risultato = calcolaHamming($stringa1, $stringa2);
}



echo $template->render('hamming', [
    'risultato'=>$risultato
]);