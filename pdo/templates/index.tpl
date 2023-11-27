<!doctype html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.4.10/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Document</title>
</head>
<body>
<h1>Elenco studenti</h1>
<table class="table">
    <thead>
    <tr>
        <th>Nome</th>
        <th>Cognome</th>
        <th>Classe</th>
    </tr>
    </thead>
    <tbody>
        <?php foreach ($studenti as $studente):?>
        <tr>
            <td><?=$studente['Nome']?></td>
            <td><?=$studente['Cognome']?></td>
            <td><?=$studente['Classe']?></td>
        </tr>
        <?php endforeach;?>
    </tbody>
</table>
</body>
</html>