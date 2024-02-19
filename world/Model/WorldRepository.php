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
}