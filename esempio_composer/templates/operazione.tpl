<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../style.css">
    <title>Introduzione PHP</title>
</head>
<body>

<form action="" method="post">
    <label for="a">Primo Numero</label><input id="a" type="text" name="a" value="<?php echo isset($_POST['a']) ? htmlspecialchars($_POST['a'], ENT_QUOTES) : ''; ?>"><br/>
    <label for="b">Secondo Numero</label><input id="b" type="text" name="b" value="<?php echo isset($_POST['b']) ? htmlspecialchars($_POST['b'], ENT_QUOTES) : ''; ?>"><br/>
    <input type="submit" name="add" value="Addizione">
    <input type="submit" name="mult" value="Moltiplicazione">
    <input type="submit" name="div" value="Divisione">
    <input type="submit" name="sott" value="Sottrazione">
</form>

<p>Il risultato della <?=$operazione?> è <?=$risultato?></p>

</body>
</html>
