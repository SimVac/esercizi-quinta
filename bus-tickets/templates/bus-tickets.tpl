<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bus Tickets</title>
</head>
<body>
    <?php foreach ($tickets as $ticket):?>
        <div>
            <h2><?=$ticket['nominativo']?></h2>
            <img src="https://c8.alamy.com/compit/prah60/creative-logo-autotrasporti-concept-design-dei-modelli-prah60.jpg" alt="Logo dell'azienda di trasporti" width="100" height="100">
            <p>Data e ora di acquisto: <?=$ticket['data']?></p>
            <p>Costo: <?=$ticket['costo']?>€</p>
            <p>Codice: <?=$ticket['codice']?></p>
            <p><?=$ticket['tipo']?> in zona <?=$ticket['zona']?></p>
        </div>
    <?php endforeach; ?>
</body>
</html>