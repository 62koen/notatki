*[Zadanie](https://github.com/62koen/notatki/blob/v4/attachments/HTML/stacja_paliw-spr-www.pdf)*
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stacja paliw</title>
    <link rel="stylesheet" href="styl2.css">
</head>
<body>
    <div id="baner">
        <h1>Całodobowa stacja paliw</h1>
    </div>
    <menu>
        <a href="stacja.html"><img src="home.png" alt="Symbol domu"></a>
        <a href="obliczenia.html"><img src="znak.png" alt="Symbol stacji paliw"></a>
        <a href="kwerendy.txt">Pobierz dokumenty</a>
    </menu>
    <aside id="left">
        <h2>Orientacyjny koszt paliwa</h2>
        <label for="rodzaj">Rodzaj paliwa (1-benzyna, 2-olej napędowy):</label>
        <br>
        <input type="number" min="1" max="2" id="rodzaj">
        <br>
        <label for="ilosc">Ile litrów?</label>
        <br>
        <input type="number" min="1" max="99999" id="ilosc">
        <br>
        <button>OBLICZ</button>
    </aside>
    <aside id="right">
        <img src="samochod.png" alt="samochód" id="car">
    </aside>
    <footer>
        <p>Stronę opracował: 00000000000</p>
    </footer>
</body>
</html>
```

```css
menu img {
    height: 80px;
}
* {
    font-family: Cambria;
    text-align: center;
}
#baner, footer {
    background-color: rgb(120, 0, 46);
    color: white;
    padding: 5px;
    font-size: 150%;
}
menu {
    background-color: rgb(173, 20, 87);
    text-align: left;
    margin: 0px;
}
#left {
    background-color: snow;
    color: olivedrab;
    width: 60%;
    height: 322px;
    text-align: left;
    float: left;
}
#right {
    background-color: rgb(173, 20, 87);
    width: 40%;
    height: 322px;
    float: right;
}
#car {
    margin: 40px;
    padding: 10px;
}
#car:hover {
    border: 1px dotted yellowgreen;
}
a {
    padding: 0px 50px 0px 50px;
    color: yellowgreen;
}
footer {
    height: 80px;
    clear: both;
}
```