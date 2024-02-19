<!DOCTYPE html>
<html data-theme="dracula">
<head>
    <meta charset="UTF-8">
    <title>World</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <h1 class="text-5xl">Query sul database World</h1>
    <div class="ml-5 mt-5">
        <p class="text-xl mb-3">Fai una lista di tutte le forme di governo con il numero degli stati appartenenti ad ognuna ordinati dalla forma di governo più popolare a quella meno popolare.</p>
        <div class="mockup-code max-w-3xl">
            <pre data-prefix="1"><code>SELECT COUNT(Code) as Stati, GovernmentForm</code></pre>
            <pre data-prefix="2"><code>FROM country</code></pre>
            <pre data-prefix="3"><code>GROUP BY GovernmentForm</code></pre>
            <pre data-prefix="4"><code>ORDER BY Stati DESC</code></pre>
        </div>
        <div class="overflow-x-auto">
            <table class="table">
                <!-- head -->
                <thead>
                <tr>
                    <th>Stati</th>
                    <th>GovernmentForm</th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach ($results['raggEs2'] as $government): ?>
                        <tr>
                            <td><?= $government[0]?></td>
                            <td><?= $government[1]?></td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>