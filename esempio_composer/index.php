<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine('templates', 'tpl');

$a = null;
$b = null;
$risultato = null;

if (isset($_POST['a'])){
    $a = $_POST['a'];
    $b = $_POST['b'];
    $risultato = $a * $b;
}


echo $template->render('moltiplicazione', [
    'risultato'=>$risultato
]);