*Załączniki są na dole strony*

---

```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pola figur</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h2>Pola figur płaskich</h2>
    </header>
    <main>
        <nav>
            <h3>MENU</h3>
            <ul>
                <li><a href="index.html">Prostokąt i trójkąt</a></li>
                <li><a href="kolo.html">Okrąg i koło</a></li>
            </ul>
        </nav>
        <section>
            <img src="1d.bmp" alt="Figura" id="big"><br>
            <img src="1m.bmp" alt="Wybierz trójkąt" class="choice" onclick="Choice(1)"><img src="2m.bmp" alt="Wybierz prostokąt" class="choice" onclick="Choice(2)">
            <!-- SKRYPT 1 -->
            <script>
                function Choice(x) {
                    if (x==1) {
                        document.getElementById("big").src="1d.bmp";
                    }
                    else if (x==2) {
                        document.getElementById("big").src="2d.bmp";
                    }
                }
            </script>
        </section>
        <aside>
            <h3>Pole prostokąta / podstawa trójkąta:</h3><br>
            <label for="first">Bok prostokąta / podstawa trójkąta:</label><br>
            <input type="text" name="first" id="first"><br>
            <label for="second">Drugi bok prostokąta / wysokość trójkąta:</label><br>
            <input type="text" name="second" id="second"><br>
            <input type="button" value="Oblicz" onclick="Calc()">
            <p id="result"></p>
            <!-- SKRYPT 2 -->
            <script>
                function Calc() {
                    let first = document.getElementById("first").value;
                    let second = document.getElementById("second").value;
                    let img = document.getElementById("big");
                    if (img.src.match("1d.bmp")) {
                        wynik = (first/2)*second;
                    }
                    else if (img.src.match("2d.bmp")) {
                        wynik = first*second;
                    }
                    console.log(wynik);
                    document.getElementById("result").innerHTML=wynik;
                }
            </script>
        </aside>
    </main>
    <footer><p>Autor: autor</p></footer>
</body>
</html>
```