## A'la colspan
*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabele flexbox</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="kontener">
        <div id="szer">1 i 2</div>
        <div id="waskie1">3</div>
        <div id="waskie2">4</div>
    </div>
</body>
</html>
```
*style.css*
```css
.kontener {
    display: flex; /* oznaczenie kontenera jako element flex */
    flex-direction: row; /* ustawienie w rzędzie (poziomo) */
    flex-wrap: wrap; /* zwijanie bloków */
    height: 500px;
    width: 500px;
    margin: 0 auto; /* centrowanie bloku */
    justify-content: center;
    line-height: 250px; /* tekst na środku (wysokość) */
}
body {
    text-align: center;
}
#szer {
    flex-basis: 100%; /* cała szerokość dla szerokiego bloku */
    background-color: coral;
}
#waskie1, #waskie2 {
    flex-basis: 50%; /* po połowie miejsca na mniejsze bloki */
}
#waskie1 {
    background-color: honeydew;
}
#waskie2 {
    background-color: burlywood;
}
```
#### Wynik
![](flexbox-colspan.png)
## A'la rowspan
*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabele flexbox</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="kontener">
        <div id="wysokie">1 i 2</div>
        <div id="niskie1">3</div>
        <div id="niskie2">4</div>
    </div>
</body>
</html>
```
*style.css*
```css
.kontener {
    display: flex; /* oznaczenie kontenera jako element flex */
    flex-direction: column; /* ustawienie w kolumnie (pionowo) */
    flex-wrap: wrap; /* zwijanie bloków */
    height: 500px;
    width: 500px;
    margin: 0 auto; /* centrowanie bloku */
    justify-content: center;
}
body {
    text-align: center;
}
#wysokie {
    flex-basis: 100%; /* cała wysokość dla wysokiego bloku */
    background-color: coral;
    line-height: 500px; /* tekst na środku (wysokość) */
}
#niskie1, #niskie2 {
    flex-basis: 50%; /* po połowie miejsca na mniejsze bloki */
    line-height: 250px; /* tekst na środku (wysokość) */
}
#niskie1 {
    background-color: honeydew;
}
#niskie2 {
    background-color: burlywood;
}
```
#### Wynik
![](flexbox-rowspan.png)