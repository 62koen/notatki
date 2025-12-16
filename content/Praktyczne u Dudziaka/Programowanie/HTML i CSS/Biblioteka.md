*biblioteka.html*
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Biblioteka w Książkowicach Małych</h1>
    </header>
    <div class="flex">
    <aside id="left">
        <h4>Dodaj czytelnika</h4>
        <form>
            <label for="imie">imię: </label>
            <input type="text" id="imie">
            <br>
            <label for="nazwisko">nazwisko: </label>
            <input type="text" id="nazwisko">
            <br>
            <label for="symbol">symbol: </label>
            <input type="text" id="symbol">
            <br>
            <button>AKCEPTUJ</button>
        </form>
        Dodano czytelnika Monika Nowak
    </aside>
    <main>
        <img alt="biblioteka" src="biblioteka.png">
        <h6>ul. Czytelników&nbsp;15; Książkowice Małe</h6>
        <a href="mailto:biuro@bib.pl"><p>Czy masz jakieś uwagi?</p></a>
    </main>
    <aside id="right">
        <h4>Nasi czytelnicy:</h4>
        <ol>
            <li>Olga Domys</li>
            <li>Jadwiga Kowal</li>
            <li>Krzysztof Kowalski</li>
            <li>Aleksandra Kucharczyk</li>
            <li>Zbigniew Lasecki</li>
            <li>Janina Michalak</li>
            <li>Adam Milek</li>
            <li>Magdalena Mucha</li>
            <li>Bogdan Nowacki</li>
            <li>Monika Nowak</li>
            <li>Ewelina Romanowska</li>
            <li>Maciej Wysocki</li>
        </ol>
    </aside>
    </div>
    <footer>
        <p>Projekt witryny: 00000000000</p>
    </footer>
</body>
</html>
```
*style.css*
```css
* {
    font-family: Tahoma;
}
header, footer {
    background-color: saddlebrown;
    color: white;
    padding: 3px;
    text-align: center;
}
aside {
    background-color: tan;
    height: 400px;
    width: 40%;
}
main {
    background-color: wheat;
    height: 400px;
    width: 20%;
}
img {
    margin-right: 20px;
    float: right;
}
h4 {
    text-align: center;
}
input {
    margin: 5px;
}
li:hover {
    background-color: sienna;
    color: white;
}
.flex {
    display: flex;
}
```