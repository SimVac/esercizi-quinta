<?php

require 'vendor/autoload.php';

function genera_codice()
{
    $codice = '';
    for ($i = 0; $i < 18; $i++) {
        $codice .= rand()%10;
    }
    return $codice;
}

$tipi = [
    1 => 1,
    2 => 1.5,
    3 => 2
];

$nome_tipi = [
    1 => 'Biglietto singolo',
    2 => 'Biglietto orario',
    3 => 'Biglietto giornaliero'
];

$zone = [
    1 => 1.4,
    2 => 1.8,
    3 => 2.2
];


$template = new League\Plates\Engine('templates', 'tpl');

if (isset($_POST['nominativo'])){
    $nominativo = $_POST['nominativo'];
    $zona = $_POST['zona'];
    $tipo = $_POST['tipo'];
    $quantita = $_POST['quantita'];

    $tickets = [];
    for ($i = 0; $i < $quantita; $i++){
        $ticket = [];
        $ticket['nominativo'] = $nominativo;
        $ticket['zona'] = $zona;
        $ticket['tipo'] = $nome_tipi[$tipo];
        $ticket['codice'] = genera_codice();
        $ticket['costo'] = number_format($zone[$zona] * $tipi[$tipo], 2, '.', '');
        $ticket['data'] = date('d/m/Y H:i:s');

        $tickets[] = $ticket;
    }

    echo $template->render('bus-tickets', ['tickets'=>$tickets]);
}else
    echo $template->render('bus-form');