<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Introduzione PHP</title>
</head>
<body>
<img src="img/colori_tabella.jpg">
<form action="" method="post">
    <select name="primaBanda">
        <?php foreach ($colori as $colore):?>
            <option><?=$colore?></option>
        <?php endforeach;?>
    </select>
    <select name="secondaBanda">
        <?php foreach ($colori as $colore):?>
        <option><?=$colore?></option>
        <?php endforeach;?>
    </select>
    <select name="moltiplicatore">
        <?php foreach ($moltiplicatori as $moltiplicatore):?>
        <option><?=$moltiplicatore?></option>
        <?php endforeach;?>
    </select>
    <select name="tolleranza">
        <?php foreach ($tolleranze as $tolleranza):?>
        <option><?=$tolleranza?></option>
        <?php endforeach;?>
    </select>
    <button type="submit">Calcola</button>
</form>
<p>Risultato: <?=$risultato?></p>

<p></p>

</body>
</html>