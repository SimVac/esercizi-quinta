<?php

namespace Model;
use Util\Connection;

class WorldRepository
{
    public static function query1()
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT COUNT(Code) as Stati, GovernmentForm FROM country GROUP BY GovernmentForm ORDER BY Stati DESC;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function query2(){
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name FROM country WHERE country.Population < (SELECT MAX(Population) FROM city)';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}