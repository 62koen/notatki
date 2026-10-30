*Załączniki są na dole strony*

---
*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        header, main, section, footer {
            border: 2px solid black;
            padding: 20px;
        }
        header, section, footer {
            height: 100px;
        }
        .flex {
            display: flex;
        }
        #col {
            flex-direction: column;
        }
        #left {
            width: 40%;
        }
        #right {
            width: 60%;
        }
        main {
            height: 300px;
            display: flex;
        }
        body {
            width: 700px;
        }
        h2 {
            text-align: center;
            padding-top: 10px;
        }
        p {
            padding-left: 20px;
        }
        body {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>
    <div class="flex">
        <header id="left"><h2>Stary browar</h2></header>
        <header id="right"><h2>Najlepsze piwo w mieście</h2></header>
    </div>
    <div class="flex" id="col">
        <main>
            <img src="piwo.jpg" alt="piwo" height="300px">
            <div>
            <p>Pyszne, zimne piwo w kuflu, które zasmakuje wszystkim kustoszom i koneserom. Mamy do wyboru piwa:</p>
            <ul>
                <li>Jasne</li>
                <li>Ciemne</li>
                <li>IPA</li>
                <li>Lager</li>
                <li>Bezalkoholowe</li>
                <li>Mocne</li>
            </ul>
            </div>
        </main>
        <section>Nasz lokal znajduje się na ul. Cichej 57 w Janikowie</section>
    </div>
    <div class="flex">
        <footer id="left">&copy; 2026 Stary Browar</footer>
        <footer id="right">Alkohol szkodzi zdrowiu. Pij odpowiedzialnie.</footer>
    </div>
</body>
</html>
```