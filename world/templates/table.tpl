<!DOCTYPE html>
<html data-theme="dracula">
<head>
    <meta charset="UTF-8">
    <title>World</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="overflow-x-auto">
    <table class="table">
        <thead>
            <tr>
                <?php foreach ($headers as $head): ?>
                    <th><?= $head ?></th>
                <?php endforeach; ?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($results as $result): ?>
            <tr>
                <?php for ($i = 0; $i < sizeof($result) / 2; $i++): ?>
                    <td><?= $result[$i] ?></td>
                <?php endfor; ?>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>