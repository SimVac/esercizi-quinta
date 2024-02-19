<?php
    require 'vendor/autoload.php';
    require_once 'conf/config.php';

    $template = new \League\Plates\Engine('templates', 'tpl');

    $results = [
        'raggEs2' => \Model\WorldRepository::query1()
    ];

    echo $template->render('index', [
        'results'=>$results
    ]);