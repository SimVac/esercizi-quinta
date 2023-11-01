<!doctype html>
<html lang="en" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.9.4/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Accumulate</title>
</head>
<body class="flex justify-center justify-items-center">
<div>
    <form action="" method="post" class="">
        <div class="form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text text-lg">Valori separati da una virgola</span>
            </label>
            <input class="input input-bordered w-full max-w-xs" name="valori" type="text" value="<?php echo isset($_POST['valori']) ? htmlspecialchars($_POST['valori'], ENT_QUOTES) : ''; ?>">
        </div>
        <div class="form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text text-lg">Operazione</span>
            </label>
            <select class="select select-bordered" name="operazione">
                <option disabled selected>Seleziona l'operazione</option>
                <option value="quadrato" <?=isset($_POST['operazione']) ? $_POST['operazione'] == 'quadrato' ? 'selected': '' : ''?>>Quadrato</option>
                <option value="cubo" <?=isset($_POST['operazione']) ? $_POST['operazione'] == 'cubo' ? 'selected' : '' : ''?>>Cubo</option>
                <option value="sqrt" <?=isset($_POST['operazione']) ? $_POST['operazione'] == 'sqrt' ? 'selected' : '' : ''?>>Radice Quadrata</option>
            </select>
        </div>
        <div class="form-control w-min p-2">
            <label class="label cursor-pointer">
                <span class="label-text text-lg">Pari</span>
                <input name="pari" type="checkbox" class="checkbox" <?=isset($_POST['pari']) ? 'checked' : ''?> >
            </label>
            <label class="label cursor-pointer">
                <span class="label-text text-lg pr-5">Dispari</span>
                <input name="dispari" type="checkbox" class="checkbox" <?=isset($_POST['dispari']) ? 'checked' : ''?>>
            </label>
        </div>
        <button type="submit" class="btn bg-gray-800">Calcola</button>
    </form>
    <p class="p-5 text-xl">
        <?=$valori?>
    </p>
</div>

</body>
</html>