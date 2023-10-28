<?php
require 'vendor/autoload.php';

$template = new League\Plates\Engine('templates', 'tpl');

$colori = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White'
];
$valori_colore = [
    'Black' => 0,
    'Brown' => 1,
    'Red' => 2,
    'Orange' => 3,
    'Yellow' => 4,
    'Green' => 5,
    'Blue' => 6,
    'Violet' => 7,
    'Grey' => 8,
    'White' => 9
];
$moltiplicatori = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White',
    'Gold',
    'Silver'
];
$valori_moltiplicatore = [
    'Black' => 1,
    'Brown' => 10,
    'Red' => 100,
    'Orange' => 1000,
    'Yellow' => 10000,
    'Green' => 100000,
    'Blue' => 1000000,
    'Violet' => 10000000,
    'Grey' => 100000000,
    'White' => 1000000000,
    'Gold' => 0.1,
    'Silver' => 0.01
];
$tolleranze = [
    'Brown',
    'Red',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'Gold',
    'Silver'
];
$valori_tolleranza = [
    'Brown' => 1,
    'Red' => 2,
    'Green' => 0.5,
    'Blue' => 0.25,
    'Violet' => 0.1,
    'Grey' => 0.05,
    'Gold' => 5,
    'Silver' => 10
];

$valore = null;
if (isset($_POST['primaBanda'])) {
    $valore = $valori_colore[$_POST['primaBanda']];
    $valore += $valori_colore[$_POST['secondaBanda']];
    $valore *= $valori_moltiplicatore[$_POST['moltiplicatore']];
    $valore .= ' Ω ' . $valori_tolleranza[$_POST['tolleranza']] . '%';
}

echo $template->render('resistenze', [
    "colori"=>$colori,
    "moltiplicatori"=>$moltiplicatori,
    "tolleranze"=>$tolleranze,
    "risultato"=>$valore
]);