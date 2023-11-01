<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Hamming</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="stringa1" value="<?php echo isset($_POST['stringa1']) ? htmlspecialchars($_POST['stringa1'], ENT_QUOTES) : ''; ?>">
    <input type="text" name="stringa2" value="<?php echo isset($_POST['stringa2']) ? htmlspecialchars($_POST['stringa2'], ENT_QUOTES) : ''; ?>">
    <button type="submit">Calcola</button>
</form>
<p>
    <?php
    if ($risultato == 'errore lunghezza')
        echo 'Le stringhe sono di lunghezza diversa';
    else if ($risultato == 'errore caratteri')
        echo 'I caratteri non sono validi';
    else if ($risultato != null || $risultato == '0')
        echo 'La distanza di hamming è ' . $risultato;
?>
</p>
</body>
</html>