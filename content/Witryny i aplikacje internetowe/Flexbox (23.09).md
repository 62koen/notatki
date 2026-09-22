[PDF](https://www.kodowanieinfo.pl/wp-content/uploads/2026/09/spr1-1semestr-witryny.pdf)

---
## 1. Kod HTML (do przepisania na sprawdzianie, bez komentarzy)
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- 1. Nagłówek na samej górze -->
    <header class="header">Header</header>

    <!-- 2. Główny wiersz łączący Sidebar, Main Content + Footer oraz ADS -->
    <div class="middle-container">

        <aside class="sidebar">Sidebar</aside>

        <!-- Środkowa kolumna łącząca treść i stopkę -->
        <div class="content-wrapper">
            <main class="main-content">Main Content</main>
            <footer class="footer">Footer</footer>
        </div>

        <aside class="ads">ADS</aside>

    </div>

</body>
</html>
```

---
## 2. Ostateczny wygląd strony (wyświetlony na sprawdzianie)
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/img/witryny-23-09-flexbox.png)

---
## 3. Treść zadania i rozwiązanie (z AI)
> *Po odtworzeniu kodu html strony (pkt. 1) należy opisać sposób podziału strony na bloki używając nazw tychże bloków zaczynając od body i podając sposób zagnieżdżenia poszczególnych bloków.*
> 
> *Następnie trzeba podać dla każdego bloku z osobna w jaki sposób jest on tworzony poprzez flexbox z uwzględnieniem flex-direction dla wszystkich bloków nadrzędnych posiadających właściwość display: flex;*
> 
> *Wreszcie należy wyjaśnić jakimi właściwościami stylu css jest wyśrodkowany napis Header.*


Strona podzielona jest na bloki w następujący sposób. Blok nadrzędny body zawiera dwa elementy: header oraz div o klasie middle-container. Wewnątrz middle-container znajdują się trzy elementy: aside o klasie sidebar, div o klasie content-wrapper oraz aside o klasie ads. Wewnątrz content-wrapper znajdują się dwa elementy: main o klasie main-content oraz footer.

Body posiada właściwość display: flex z flex-direction ustawionym na column, co powoduje że elementy układają się pionowo jeden pod drugim. Middle-container również posiada display: flex, ale z domyślnym flex-direction row, przez co jego elementy układają się poziomo obok siebie. Content-wrapper posiada display: flex z flex-direction column, przez co main-content i footer układają się pionowo.

Napis Header jest wyśrodkowany dzięki temu, że element header posiada właściwość display: flex, a następnie align-items: center, które centruje napis w pionie oraz justify-content: center, które centruje napis w poziomie.

---
## 4. Pomocniczy CSS (nie piszemy go na sprawdzianie)
```css
body {
    display: flex;
    flex-direction: column;
    font-family: sans-serif;
    font-size: 24px;
    color: black;
}

/* --- NAGŁÓWEK --- */
.header {
    background-color: lime;
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* --- ŚRODKOWA SEKCJA (POZIOMA) --- */
.middle-container {
    display: flex;
    height: 440px;
}

/* Lewy panel boczny */
.sidebar {
    background-color: blue;
    width: 20%;
    display: flex;
    justify-content: center;
}

/* Prawy panel z reklamami */
.ads {
    background-color: aqua;
    width: 20%;
    display: flex;
    justify-content: center;
}

/* --- ŚRODKOWA KOLUMNA (PIONOWA) --- */
.content-wrapper {
    width: 60%;
    display: flex;
    flex-direction: column;
}

/* Główna treść */
.main-content {
    background-color: fuchsia;
    height: 360px;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* Stopka */
.footer {
    background-color: red;
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
}
```

---
# Podsumowanie
- Na sprawdzianie piszemy kod HTML z punktu 1 (z pamięci).
- Potem wyjaśniamy jak stylujemy stronę aby wyglądała w taki sposób jak na zdjęciu; głównie chodzi o **ułożenie bloków**, czyli **flexa** (przykładowa odpowiedź jest wyżej).
- Kod CSS jest tylko do podglądu, żeby zobaczyć jak wygląda stylowanie, **nie ma go na sprawdzianie**.