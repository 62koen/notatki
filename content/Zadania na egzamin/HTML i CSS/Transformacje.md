```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .b1 {
            padding: 10px; margin: 10px 0px 0px 10px; /* kolejność zgodnie z ruchem wskazówek zegara */
            /* transform: translate(160px,50px); /* przesunięcie o 160 w prawo i 50 na dół */
            /* transform: translateX(x); /* w jednym wymiarze; podobnie z y i z */
            /* transform: translate3d(x, y, z); /* w trzech wymiarach */
            /* transform: scale(0.5, 0.5); /* skalowanie o 50% */
            /* transform: rotate(45deg); /* podajemy stopnie jako deg */
            /* transform: skew(-45deg,10deg); /* pochylenie w przestrzeni */
            width: 95px; height: 95px; background: green;
        }
        .b1:hover {
            transform: rotate(180deg);
        }
        .white {
            color: white;
        }
        .b2 {
            width: 250px;
            height: 250px;
            background: blue;
            padding: 50px;
            border: 10px solid yellowgreen;
        }
        * {
            box-sizing: border-box; /* pozwala zachować wymiary przy stosowaniu marginesów */
        }
    </style>
</head>
<body>
    <div class="b1">
        <p class="white">box1</p>
    </div>
    <div class="b2">

    </div>
</body>
</html>
```