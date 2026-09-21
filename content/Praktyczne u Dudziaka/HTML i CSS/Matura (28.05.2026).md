*Załączniki są na dole strony*

---
*index.html*
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matura</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>System informacji dla maturzystów</h1>
    </header>
    <main>
        <aside>
            <img src="ma.jpg" alt="Matura"><br>
            <img src="tu.jpg" alt="Matura"><br>
            <img src="ra.jpg" alt="Matura"><br>
        </aside>
        <div id="flex">
        <section id="first">
            <h3>Wybierz ucznia z listy.</h3>
        </section>
        <section id="second">
            <div class="blok"><h4>Przedmioty</h4></div>
            <div class="blok"><h4>Lata</h4></div>
            <div class="blok"><h4>Najlepszy wynik</h4></div>
            <div class="blok"><h4>Najgorszy wynik</h4></div>
        </section>
        </div>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>
```
*styl.css*
```css
body {
    font-family: cursive, sans-serif;
    background-color: #4682B4;
}
header, footer {
    background-color: #0F0F64;
    color: white;
    text-align: center;
    padding: 3px;
}
aside {
    width: 20%;
    height: 500px;
}
section {
    width: 80%;
    height: 250px;
    overflow: auto;
}
img {
    width: 150px;
    padding: 2px;
}
h4 {
    text-align: center;
}
a {
    color: white;
    text-decoration: none;
}
a:hover {
    background-color: #12538A;
}
.blok {
    background-color: #2B6BA0;
    color: white;
    width: 150px;
    height: 150px;
    margin: 10px;
    padding: 5px;
    border-radius: 10px;
    box-shadow: 3px 3px 5px black;
}
main {
    display: flex;
}
#second {
    display: flex;
    
}
```