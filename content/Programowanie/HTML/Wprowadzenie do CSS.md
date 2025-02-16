Plik HTML
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- stylowanie wewnętrzne -->
    <style>
        p {
        font-weight: bold;
        }
    </style>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- 
    h1 - selektor
    color, font-size - właściwości
    red, 50 px - wartości 
    -->
    <!-- stylowanie liniowe -->
    <h1 style="color:red;font-size: 50px;">Kaskadowe arkusze stylów (CSS)</h1>
    <p>Paragraf</p>
    <p>Paragraf 2</p>
    <h2>Kino</h2>
    <div>blok 1</div>
</body>
</html>
```

style.css
```css
h2 {
    font-size:50px;
    text-align: center;
    text-decoration: underline;
}
div {
    width: 500px;
    height: 300px;
    background-color: yellow;
    text-align: center;
}
```