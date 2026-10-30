```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* przed klasami stawiamy kropkę */
        .kl1 {
            width: 300px;
            height: 150px;
            background-color: yellow;
        }
        /* przed id stawiamy # */
        #id1 {
            width: 300px;
            height: 100px;
            background-color: aqua;
        }
        #id2 {
            width: 100px;
            height: 100px;
            background-color: blueviolet;
        }
        #id3 {
            width: 60px;
            height: 90px;
            background-color: orangered;
        }
        .blokki {
            text-align: center;
        }
        img:hover {
            background-color: indigo;
            border: 3px solid brown;
            padding: 8px;
        }
    </style>
</head>
<body>
    <!-- dodajemy klasę, aby móc stylować elementy w danej klasie, a nie dowolny div, h1 lub p -->
    <div class="kl1">blok1</div>
    <br>
    <div class="kl1">blok 2</div>
    <br>
    <!-- stosujemy id i klasy na raz, aby zastosować pewne style dla wszystkich, a pewne dla pojedynczych elementów - zobacz wyżej -->
    <div id="id1" class="blokki">blokk1</div>
    <br>
    <div id="id2" class="blokki">blokk2</div>
    <br>
    <div id="id3" class="blokki">blokk3</div>
    <br>
    <img src="obraz34.jpg" alt="obraz kolibra" height="300px">
</body>
</html>
```