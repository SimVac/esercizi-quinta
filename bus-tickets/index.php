<?php

require 'vendor/autoload.php';

$template = new League\Plates\Engine('templates', 'tpl');

if (isset($_POST['nominativo'])){
    $nominativo = $_POST['nominativo'];
    $zona = $_POST['zona'];
    $tipo = $_POST['tipo'];
    $quantita = $_POST['quantita'];
}else
    echo $template->render('bus-form', []);