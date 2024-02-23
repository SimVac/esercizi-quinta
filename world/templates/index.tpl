<!DOCTYPE html>
<html data-theme="dracula">
<head>
    <meta charset="UTF-8">
    <title>World</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <h1 class="flex justify-center text-6xl pt-10 pb-10">Query sul database World</h1>
    <div class="ml-5 mt-5">
        <p class="text-xl mb-3">Fai una lista di tutte le forme di governo con il numero degli stati appartenenti ad ognuna ordinati dalla forma di governo più popolare a quella meno popolare.</p>
        <a href="index.php?query=1">
            <div class="mockup-code max-w-3xl">
                <pre data-prefix="1"><code>SELECT COUNT(Code) as Stati, GovernmentForm</code></pre>
                <pre data-prefix="2"><code>FROM country</code></pre>
                <pre data-prefix="3"><code>GROUP BY GovernmentForm</code></pre>
                <pre data-prefix="4"><code>ORDER BY Stati DESC</code></pre>
            </div>
        </a>
    </div>
    <div class="ml-5 mt-5">
        <p class="text-xl mb-3">Fai una lista degli stati la cui popolazione è inferiore a quella della città più popolosa del mondo</p>
        <a href="index.php?query=2">
            <div class="mockup-code max-w-3xl">
                <pre data-prefix="1"><code>SELECT country.Name</code></pre>
                <pre data-prefix="2"><code>FROM country</code></pre>
                <pre data-prefix="3"><code>WHERE country.Population < (SELECT MAX(Population) FROM city)</code></pre>
            </div>
        </a>
    </div>
</body>
</html>