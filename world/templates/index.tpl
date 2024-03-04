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
    <h2 class="flex justify-center text-3xl pt-2 pb-2">Clicca su una query per eseguirla</h2>
    <div class="mb-5">
        <p class="text-xl mb-3 ml-5 mt-5">Fai una lista di tutte le forme di governo con il numero degli stati appartenenti ad ognuna ordinati dalla forma di governo più popolare a quella meno popolare.</p>
        <div class="ml-5 mt-5 max-w-3xl">
            <a href="index.php?query=1">
                <div class="mockup-code">
                    <pre data-prefix="1"><code>SELECT COUNT(Code) as Stati, GovernmentForm</code></pre>
                    <pre data-prefix="2"><code>FROM country</code></pre>
                    <pre data-prefix="3"><code>GROUP BY GovernmentForm</code></pre>
                    <pre data-prefix="4"><code>ORDER BY Stati DESC</code></pre>
                </div>
            </a>
        </div>
        <p class="text-xl mb-3 ml-5 mt-5">Fai una lista degli stati la cui popolazione è inferiore a quella della città più popolosa del mondo</p>
        <div class="ml-5 mt-5 max-w-3xl">
            <a href="index.php?query=2">
                <div class="mockup-code">
                    <pre data-prefix="1"><code>SELECT country.Name</code></pre>
                    <pre data-prefix="2"><code>FROM country</code></pre>
                    <pre data-prefix="3"><code>WHERE country.Population < (SELECT MAX(Population) FROM city)</code></pre>
                </div>
            </a>
        </div>
        <p class="text-xl mb-3 ml-5 mt-5">Fai una lista di tutti i continenti con il numero degli stati appartenenti ad ognuno ordinati dal continente con più stati a quello con meno stati.</p>
        <div class="ml-5 mt-5 max-w-3xl">
            <a href="index.php?query=3">
                <div class="mockup-code">
                    <pre data-prefix="1"><code>SELECT Continent, COUNT(*) AS NumeroStati</code></pre>
                    <pre data-prefix="2"><code>FROM country</code></pre>
                    <pre data-prefix="3"><code>GROUP BY Continent</code></pre>
                    <pre data-prefix="4"><code>ORDER BY NumeroStati DESC</code></pre>
                </div>
            </a>
        </div>
        <p class="text-xl mb-3 ml-5 mt-5">Qual è il continente che contiene più stati e quanti sono?</p>
        <div class="ml-5 mt-5 max-w-3xl">
            <a href="index.php?query=4">
                <div class="mockup-code">
                    <pre data-prefix="1"><code>SELECT Continent, COUNT(*) as NumeroStati</code></pre>
                    <pre data-prefix="2"><code>FROM country</code></pre>
                    <pre data-prefix="3"><code>GROUP BY Continent</code></pre>
                    <pre data-prefix="4"><code>HAVING COUNT(*) = (SELECT MAX(c)</code></pre>
                    <pre data-prefix="5"><code>                   FROM (SELECT COUNT(*) as c</code></pre>
                    <pre data-prefix="6"><code>                         FROM country</code></pre>
                    <pre data-prefix="7"><code>                         GROUP BY Continent) AS a)</code></pre>
                </div>
            </a>
        </div>
        <p class="text-xl mb-3 ml-5 mt-5">Fai una lista del numero di città contenute in ogni continente</p>
        <div class="ml-5 mt-5 max-w-3xl">
            <a href="index.php?query=5">
                <div class="mockup-code">
                    <pre data-prefix="1"><code>SELECT Continent, COUNT(*) as NumeroCitta</code></pre>
                    <pre data-prefix="2"><code>FROM country</code></pre>
                    <pre data-prefix="3"><code>INNER JOIN city</code></pre>
                    <pre data-prefix="4"><code>ON country.Code = city.CountryCode</code></pre>
                    <pre data-prefix="5"><code>GROUP BY Continent</code></pre>
                </div>
            </a>
        </div>
    </div>
</body>
</html>