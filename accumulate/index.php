<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine("templates", "tpl");

function getValue($operazione, $valore)
{
    if ($operazione == "quadrato")
        return $valore * $valore;
    elseif ($operazione == "cubo")
        return $valore * $valore * $valore;
    else if ($operazione == "sqrt")
        return sqrt($valore);
    return $valore;
}

$risultato = '';

if (isset($_POST['valori']) && isset($_POST['operazione'])){
    $valori = explode(',', $_POST['valori']);
    $operazione = $_POST['operazione'];
    $pari = isset($_POST['pari']);
    $dispari = isset($_POST['dispari']);

    for ($i = 0; $i < count($valori); $i++) {
        if ($valori[$i] == '') continue;
        if ($valori[$i] % 2 == 0 && $pari)
            $valori[$i] = getValue($operazione, $valori[$i]);
        elseif ($valori[$i] % 2 == 1 && $dispari)
            $valori[$i] = getValue($operazione, $valori[$i]);
    }

    foreach ($valori as $valore){
        $risultato .= $valore . ', ';
    }
    $risultato = rtrim($risultato, ', ');
}


echo $template->render("accumulate", [
    "valori"=>$risultato
]);