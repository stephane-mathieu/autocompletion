<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>Autocompletion</title>
</head>

<body>
    <form autocomplete="off" action="" method="GET">
        <div class="search-container">
            <input type="text" name="search" id="voiture" placeholder="Recherche Voiture">
            <div class="suggestions">
                <ul></ul>
            </div>
        </div>
    </form>

    <div id="sectionUp" aria-labelledby="dropdownMenuButton">
    </div>
    <div id="sectionDown" aria-labelledby="dropdownMenuButton">
    </div>
</body>

</html>