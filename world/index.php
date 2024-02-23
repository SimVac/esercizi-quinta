<?php
    require 'vendor/autoload.php';
    require_once 'conf/config.php';

    $template = new \League\Plates\Engine('templates', 'tpl');

    if (isset($_GET['query'])){
        $results = null;
        $headers = null;
        switch ($_GET['query']){
            case 1:
                $headers = ['Stati', 'Forme di Governo'];
                $results = \Model\WorldRepository::query1();
                break;
            case 2:
                $headers = ['Stati'];
                $results = \Model\WorldRepository::query2();
                break;
            default:
                echo $template->render('index');
                break;
        }
        if (!is_null($results))
            echo $template->render('table', [
                'results'=>$results,
                'headers'=>$headers
            ]);
    }else
        echo $template->render('index');