```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .box {
            width: 250px;
            height: 250px;
            border: 2px solid #000;
            /* box-shadow: inset poziomo pionowo promień-rozmycia zasięg kolor; */
            box-shadow: 5px 5px 4px #999;
            /* box-shadow: 5px 5px */
            /* box-shadow: inset 5px 5px 4px #999; */
            /* box-shadow: inset -5px -5px 4px; */
        }
        body {
            background: linear-gradient(red,blue 80%,red);
            /* background: linear-gradient(to top,red,blue); */
            /* background: repeating-linear-gradient(red,blue 25%); */
        }
    </style>
</head>
<body>
    <div class="box"></div>
</body>
</html>
```