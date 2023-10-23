<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine('templates', 'tpl');

$a = null;
$b = null;
$risultato = null;
$operazione = null;

if (isset($_POST['a'])){
    $a = $_POST['a'];
    $b = $_POST['b'];
    
    if (isset($_POST['add'])) {
        $risultato = $a + $b;
        $operazione = 'addizione';
    }elseif (isset($_POST['mult'])) {
        $risultato = $a * $b;
        $operazione = 'moltiplicazione';
    }elseif (isset($_POST['div'])) {
        $risultato = $a / $b;
        $operazione = 'divisione';
    }elseif (isset($_POST['sott'])) {
        $risultato = $a - $b;
        $operazione = 'sottrazione';
    }else $risultato = 'boh';
}



echo $template->render('operazione', [
    'risultato'=>$risultato,
    'operazione'=>$operazione
]);