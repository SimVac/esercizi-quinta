<?php

namespace Model;
use Util\Connection;

class StudenteRepository
{
    public static function listAll(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT Nome, Cognome, c.classe FROM studenti AS s INNER JOIN classe AS c WHERE id=s.classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function getStudenteByID($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM studenti WHERE ID=:id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        $studente = $result->fetchAll();
        return $studente[0];
    }
    public static function listAllUsingId($id): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM studenti WHERE ID > :id';
        //$result = $pdo->query($sql);
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        return $result->fetchAll();
    }

    public static function listAllOrderBySurname(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT (Nome, Cognome, c.classe) FROM studenti AS s INNER JOIN classe AS c WHERE id=s.classe ORDER BY Cognome';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function listAllOrderByName(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT (Nome, Cognome, c.classe) FROM studenti AS s INNER JOIN classe AS c WHERE id=s.classe ORDER BY Nome';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function listAllOrderByClass(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT (Nome, Cognome, c.classe) FROM studenti AS s INNER JOIN classe AS c WHERE id=s.classe ORDER BY c.classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function add($nome, $cognome)
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO studenti (Nome, Cognome) VALUES (:nome, :cognome)';
        //$result = $pdo->query($sql);
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome
        ]);
    }

    public static function remove($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'DELETE FROM studenti WHERE id=:id';

        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
    }
    public static function update($nome, $cognome, $id)
    {
        $pdo = Connection::getInstance();
        $sql = 'UPDATE studenti SET Nome = :nome, Cognome = :cognome WHERE id = :id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome,
            'id' => $id
        ]);
    }
}