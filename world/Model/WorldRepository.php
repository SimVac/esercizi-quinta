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

    public static function query3(){
        $pdo = Connection::getInstance();
        $sql = 'SELECT Continent, COUNT(*) AS NumeroStati FROM country GROUP BY Continent ORDER BY NumeroStati DESC';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function query4(){
        $pdo = Connection::getInstance();
        $sql = 'SELECT Continent, COUNT(*) AS NumeroStati FROM country GROUP BY Continent HAVING COUNT(*) = (SELECT MAX(c) FROM (SELECT COUNT(*) as c FROM country GROUP BY Continent) AS a)';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function query5(){
        $pdo = Connection::getInstance();
        $sql = 'SELECT Continent, COUNT(*) as NumeroCitta FROM country INNER JOIN city ON country.Code = city.CountryCode GROUP BY Continent';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}