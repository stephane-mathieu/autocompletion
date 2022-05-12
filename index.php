<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="style.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <link rel="stylesheet" href="index.css">
    <title>Autocompletion</title>
</head>

<body>
    <form autocomplete="off" action="recherche.php" method="GET">
        <div class="close-btn">
            <span class="fas fa-times"></span>
        </div>
        <div class="wrapper">
            <div class="search-btn">
                <span class="fas fa-search"></span>
            </div>
            <div class="search-data">
                <input type="text" name="search" id="voiture" placeholder="Recherchez votre voiture">
                <div class="line"></div>
                <span class="fas fa-search"></span>
                <div id="sectionUp"></div>
                <div class="line2"></div>
                <div id="sectionDown"></div>
            </div>
           
    </form>

</body>

</html>