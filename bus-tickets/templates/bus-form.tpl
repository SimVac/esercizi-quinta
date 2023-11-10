<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bus Tickets</title>
</head>
<body>
<form action="" method="post">
    Nome e Cognome<input type="text" placeholder="Nome e Cognome" name="nominativo"><br>
    Zona
    <select name="zona">
        <option>1</option>
        <option>2</option>
        <option>3</option>
    </select><br>
    Tipo <br>
    <input type="radio" name="tipo" value="1">Corsa semplice</input><br>
    <input type="radio" name="tipo" value="2">Biglietto orario</input><br>
    <input type="radio" name="tipo" value="3">Biglietto giornaliero</input><br>
    Numero Biglietti
    <select name="quantita">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
    </select><br>
    <button type="submit">Invia</button>
</form>
</body>
</html>