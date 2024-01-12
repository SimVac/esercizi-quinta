<!doctype html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
    <title>Esempio CRUD</title>
</head>
<body>
<div class="container grid-md">
    <div class="columns">
        <div class="column col-mx-auto">
            <h1>Esempio di gestione delle operazioni CRUD</h1>
            <div style="display: flex; justify-items: start">
                <div>
                    <h2>Inserimento di un nuovo studente</h2>
                    <form action="index.php" method="post">
                        <input type="text" name="nome" placeholder="Nome" required><br>
                        <input type="text" name="cognome" placeholder="Cognome" required><br>
                        <select name="id_classe" required>
                            <option disabled selected value="">Classe</option>
                            <?php foreach ($classi as $classe): ?>
                                <option value="<?= $classe['id'] ?>"><?= $classe['sezione'] ?></option>
                            <?php endforeach?>
                        </select><br><br>
                        <input type="submit" value="Inserisci un nuovo studente">
                    </form>
                </div>
                <div>
                    <h2>Inserimento di una nuova classe</h2>
                    <form action="index.php" method="post">
                        <input type="text" name="sezione" placeholder="Classe" required><br><br>
                        <input type="submit" value="Inserisci una nuova classe">
                    </form>
                </div>
            </div>
            <hr>
            <h1>Elenco studenti</h1>
            <table class="table">
                <?php foreach ($studenti as $s):?>
                <?php if(isset($studente['id']) && $s['id'] == $studente['id']):?>
                <form action="index.php" method="post">
                    <tr>
                        <td><input type="text" name="nome" value="<?=$studente['nome']?>"></td>
                        <td><input type="text" name="cognome" value="<?=$studente['cognome']?>"></td>
                        <input type="hidden" name="id" value="<?=$studente['id']?>">
                        <td><?=$s['sezione']?></td>
                        <td>&nbsp;</td>
                        <td>
                            <button type="submit">Modifica</button>
                        </td>
                    </tr>
                </form>
                <?php else:?>
                <tr>
                    <td><?=$s['nome']?></td>
                    <td><?=$s['cognome']?></td>
                    <td><?=$s['sezione']?></td>
                    <td><a href="index.php?action=update&id=<?=$s['id']?>"><i class="icon icon-edit"></i></a></td>
                    <td><a href="index.php?action=delete&id=<?=$s['id']?>"><i class="icon icon-delete"></i></a></td>
                </tr>
                <?php endif;?>
                <?php endforeach;?>
            </table>
        </div>
    </div>
</div>
</body>
</html>