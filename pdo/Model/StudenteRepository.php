<?php

namespace Model;
use Util\Connection;

class StudenteRepository
{
    public static function listAll(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT s.*, c.sezione FROM studente AS s INNER JOIN classe AS c WHERE c.id=s.id_classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function getStudenteByID($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM studente WHERE ID=:id';
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
        $sql = 'SELECT s.*, c.sezione FROM studente AS s INNER JOIN classe AS c WHERE c.id=s.id_classe ORDER BY s.cognome';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function listAllOrderByName(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT s.*, c.sezione FROM studente AS s INNER JOIN classe AS c WHERE c.id=s.id_classe ORDER BY s.nome';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function listAllOrderByClass(): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT s.*, c.sezione FROM studente AS s INNER JOIN classe AS c WHERE c.id=s.id_classe ORDER BY c.classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function add($nome, $cognome, $id_classe)
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO studente (nome, cognome, id_classe) VALUES (:nome, :cognome, :id_classe)';
        //$result = $pdo->query($sql);
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome,
            'id_classe' => $id_classe
        ]);
    }

    public static function remove($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'DELETE FROM studente WHERE id=:id';

        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
    }
    public static function update($nome, $cognome, $id_classe, $id)
    {
        $pdo = Connection::getInstance();
        $sql = 'UPDATE studente SET nome = :nome, cognome = :cognome, id_classe = :id_classe WHERE id = :id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome,
            'id' => $id,
            'id_classe' => $id_classe
        ]);
    }
}