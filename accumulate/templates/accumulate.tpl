<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accumulate</title>
</head>
<body>
<form action="" method="post">
    <label>
        Valori (separati da una virgola)
        <input name="valori" type="text">
    </label>
    <label>
        Operazioni
        <select name="operazione">
            <option value="quadrato">Quadrato</option>
            <option value="cubo">Cubo</option>
            <option value="sqrt">Radice Quadrata</option>
        </select>
    </label>
    <label>
        Pari
        <input name="pari" type="checkbox">
    </label>
    <label>
        Dispari
        <input name="dispari" type="checkbox">
    </label>
    <button type="submit">Calcola</button>
</form>
</body>
</html>