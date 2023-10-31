<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine("templates", "tpl");

if (isset($_POST['valori'])){
    $valori = explode(',', $_POST['valori']);
    $operazione = $_POST['operazione'];
    $pari = isset($_POST['pari']);
    $dispari = isset($_POST['dispari']);
}


echo $template->render("accumulate", [
]);