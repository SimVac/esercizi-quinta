<!doctype html>
<html lang="it" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.6.0/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Esempio CRUD</title>
</head>
<body>
<div class="hero min-h-screen">
    <div class="hero-content text-center">
        <div class="max-w-4xl">
            <h1 class="text-4xl mb-10">Esempio di gestione delle operazioni CRUD</h1>
            <div class="flex justify-between">
                <div class="flex flex-col max-w-xs">
                    <h2 class="text-2xl">Inserimento di un nuovo studente</h2>
                    <form action="index.php" method="post" class="flex flex-col space-y-4 m-5">
                        <input type="text" name="nome" placeholder="Nome" class="input input-bordered w-full max-w-xs" required>
                        <input type="text" name="cognome" placeholder="Cognome" class="input input-bordered w-full max-w-xs" required>
                        <select name="id_classe" class="select select-bordered w-full max-w-xs text-base" required>
                            <option disabled selected value="">Classe</option>
                            <?php foreach ($classi as $classe): ?>
                                <option value="<?= $classe['id'] ?>"><?= $classe['sezione'] ?></option>
                            <?php endforeach?>
                        </select>
                        <input type="submit" class="btn btn-neutral" value="Inserisci un nuovo studente">
                    </form>
                </div>
                <div class="flex flex-col max-w-xs">
                    <h2 class="text-2xl">Inserimento di una nuova classe</h2>
                    <form action="index.php" method="post" class="mt-5">
                        <input type="text" name="sezione" placeholder="Classe" class="input input-bordered w-full max-w-xs" required><br><br>
                        <input type="submit" class="btn btn-neutral" value="Inserisci una nuova classe">
                    </form>
                </div>
            </div>
            <hr>
            <h1 class="text-4xl my-5">Elenco studenti</h1>
            <div class="overflow-x-auto">
                <table class="table">
                    <?php foreach ($studenti as $s):?>
                    <?php if(isset($studente['id']) && $s['id'] == $studente['id']):?>
                    <form action="index.php" method="post">
                        <tr>
                            <td><input type="text" name="nome" class="input input-bordered text-xl max-w-36" value="<?=$studente['nome']?>"></td>
                            <td><input type="text" name="cognome" class="input input-bordered text-xl max-w-36" value="<?=$studente['cognome']?>"></td>
                            <td>
                                <select class="select select-bordered text-xl" name="id_classe">
                                    <?php foreach ($classi as $classe): ?>
                                    <option value="<?= $classe['id'] ?>" <?= $studente['id_classe'] == $classe['id'] ? 'selected' : '' ?>><?= $classe['sezione'] ?></option>
                                    <?php endforeach?>
                                </select>
                            </td>
                            <input type="hidden" name="id" value="<?=$studente['id']?>">
                            <td>
                                <button class="btn btn-neutral" type="submit">Modifica</button>
                            </td>
                        </tr>
                    </form>
                    <?php else:?>
                    <tr>
                        <td class="text-xl"><?=$s['nome']?></td>
                        <td class="text-xl"><?=$s['cognome']?></td>
                        <td class="text-xl"><?=$s['sezione']?></td>
                        <td><a href="index.php?action=update&id=<?=$s['id']?>" class="w-0"><img src="assets/img/pencil.png" alt="Modifica"></a></td>
                        <td><a href="index.php?action=delete&id=<?=$s['id']?>"><img src="assets/img/trash.png" alt="Elimina"></a></td>
                    </tr>
                    <?php endif;?>
                    <?php endforeach;?>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>