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
<div id="calcolo">
    <h1>Calcolo del valore di una resistenza</h1>
    <form action="" method="post">
        <div class="wrap">
            <p>Prima Banda</p>
            <select name="primaBanda">
                <option selected disabled>Scegli il colore</option>
                <?php foreach ($colori as $colore):?>
                <option <?php echo isset($_POST['primaBanda']) ? $_POST['primaBanda'] == $colore ? 'selected' : '' : ''?> ><?=$colore?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="wrap">
            <p>Seconda Banda</p>
            <select name="secondaBanda">
                <option selected disabled>Scegli il colore</option>
                <?php foreach ($colori as $colore):?>
                <option <?php echo isset($_POST['secondaBanda']) ? $_POST['secondaBanda'] == $colore ? 'selected' : '' : ''?> ><?=$colore?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="wrap">
            <p>Moltiplicatore</p>
            <select name="moltiplicatore">
                <option selected disabled>Scegli il colore</option>
                <?php foreach ($moltiplicatori as $moltiplicatore):?>
                <option <?php echo isset($_POST['moltiplicatore']) ? $_POST['moltiplicatore'] == $moltiplicatore ? 'selected' : '' : ''?> ><?=$moltiplicatore?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="wrap">
            <p>Tolleranza</p>
            <select name="tolleranza">
                <option selected disabled>Scegli il colore</option>
                <?php foreach ($tolleranze as $tolleranza):?>
                <option <?php echo isset($_POST['tolleranza']) ? $_POST['tolleranza'] == $tolleranza ? 'selected' : '' : ''?> ><?=$tolleranza?></option>
                <?php endforeach;?>
            </select>
        </div>
        <button type="submit">Calcola</button>
    </form>
    <p id="risultato">Risultato: <?=$risultato?></p>
</div>

</body>
</html>