- [Zagadnienia](https://www.kodowanieinfo.pl/wp-content/uploads/2025/12/spr3-witryny.pdf)
- Model LLM: Claude Sonnet 4.5
## 1. Gradienty w CSS

### Gradient liniowy (linear-gradient)
Przechodzi płynnie z jednego koloru w drugi w linii prostej.

```css
background: linear-gradient(kierunek, kolor1, kolor2);
```

**Przykłady:**
```css
background: linear-gradient(to right, red, blue);
background: linear-gradient(45deg, #ff6b6b, #4ecdc4);
background: linear-gradient(to bottom, yellow, green);
```

### Gradient promieniowy (radial-gradient)
Przechodzi z jednego koloru w drugi w kształcie koła/elipsy od środka na zewnątrz.

```css
background: radial-gradient(kolor1, kolor2);
```

**Przykłady:**
```css
background: radial-gradient(red, blue);
background: radial-gradient(circle, #ff6b6b, #4ecdc4);
background: radial-gradient(ellipse, yellow, green);
```

---

## 2. Wypełnienie tapetą z pliku graficznego

```css
background-image: url('ścieżka/do/pliku.jpg');
background-repeat: repeat; /* lub no-repeat, repeat-x, repeat-y */
background-size: cover; /* lub contain, auto, 100% 100% */
background-position: center; /* lub top, bottom, left, right */
```

**Kompletny przykład:**
```css
div {
    background-image: url('tapeta.png');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
```

---

## 3. Właściwości czcionek

```css
element {
    font-family: "Arial", "Helvetica", sans-serif; /* 3 czcionki */
    line-height: 1.5; /* odstęp między liniami */
    font-size: 16px; /* rozmiar czcionki */
    letter-spacing: 2px; /* odstęp między literami */
}
```

**Objaśnienia:**
- **font-family** - lista czcionek (przeglądarka użyje pierwszej dostępnej)
- **line-height** - wysokość linii (może być w px, em lub bez jednostki)
- **font-size** - rozmiar czcionki (px, em, rem, %)
- **letter-spacing** - odstęp między literami (px, em)

---

## 4. Kształty punktora w liście (ul)

```css
ul {
    list-style-type: disc; /* pełne kółko (domyślne) */
}

ul {
    list-style-type: circle; /* puste kółko */
}

ul {
    list-style-type: square; /* kwadrat */
}

ul {
    list-style-type: none; /* brak punktora */
}
```

Można też użyć własnej grafiki:
```css
ul {
    list-style-image: url('punktor.png');
}
```

---

## 5. Marginesy i paddingi

### Marginesy zewnętrzne (margin)
```css
element {
    margin-top: 10px;
    margin-right: 20px;
    margin-bottom: 15px;
    margin-left: 25px;
}

/* Skrócony zapis (góra, prawy, dół, lewy - zgodnie z ruchem wskazówek zegara): */
element {
    margin: 10px 20px 15px 25px;
}
```

### Marginesy wewnętrzne (padding)
```css
element {
    padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 15px;
    padding-left: 25px;
}

/* Skrócony zapis: */
element {
    padding: 10px 20px 15px 25px;
}
```

---

## 6. Obramowanie (border)

```css
element {
    border-width: 2px; /* grubość */
    border-style: solid; /* styl: solid, dashed, dotted, double, groove, ridge, inset, outset */
    border-color: red; /* kolor */
}

/* Skrócony zapis: */
element {
    border: 2px solid red;
}

/* Dla poszczególnych stron: */
element {
    border-top: 1px solid black;
    border-right: 2px dashed blue;
    border-bottom: 3px dotted green;
    border-left: 4px double red;
}

/* Zaokrąglone rogi: */
element {
    border-radius: 10px;
}
```

---

## 7. Pozycjonowanie: absolute vs relative

### Position: relative
Element jest przesunięty **względem swojej normalnej pozycji** w dokumencie. Inne elementy wciąż "widzą" jego oryginalną pozycję.

```css
element {
    position: relative;
    top: 20px; /* przesunięcie o 20px w dół od normalnej pozycji */
    left: 30px; /* przesunięcie o 30px w prawo */
}
```

### Position: absolute
Element jest przesunięty **względem najbliższego rodzica z position: relative/absolute/fixed**. Jest wyjęty z normalnego przepływu dokumentu (inne elementy go "nie widzą").

```css
element {
    position: absolute;
    top: 0; /* 0px od góry rodzica */
    right: 0; /* 0px od prawej strony rodzica */
}
```

**Główna różnica:** 
- **relative** - element zajmuje swoje miejsce, tylko wizualnie się przesuwa
- **absolute** - element jest wyjęty z przepływu, nie zajmuje miejsca

---

## 8. Cień elementu (box-shadow)

```css
box-shadow: x y rozmycie rozciągnięcie kolor;
```

**Parametry:**
- **x** - przesunięcie w poziomie (dodatnie = prawo, ujemne = lewo)
- **y** - przesunięcie w pionie (dodatnie = dół, ujemne = góra)
- **rozmycie** - wielkość rozmycia (blur)
- **rozciągnięcie** - opcjonalne, powiększenie/zmniejszenie cienia
- **kolor** - kolor cienia

**Przykłady:**
```css
box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* cień w prawo-dół z rozmyciem */
box-shadow: -3px -3px 5px gray; /* cień w lewo-górę */
box-shadow: 0 0 20px red; /* świecenie wokół elementu */
box-shadow: 2px 2px 5px 3px blue; /* z rozciągnięciem */
```

Można dodać wiele cieni naraz, oddzielając je przecinkami:
```css
box-shadow: 5px 5px 10px black, -5px -5px 10px white;
```

---

## 9. Animacja @keyframes

### Definicja animacji
```css
@keyframes nazwa-animacji {
    from { /* lub 0% */
        właściwość: wartość-początkowa;
    }
    to { /* lub 100% */
        właściwość: wartość-końcowa;
    }
}
```

### Zastosowanie animacji
```css
element {
    animation-name: nazwa-animacji;
    animation-duration: 2s; /* czas trwania */
    animation-iteration-count: infinite; /* lub liczba powtórzeń */
}

/* Skrócony zapis: */
element {
    animation: nazwa-animacji 2s infinite;
}
```

### Przykład kompletny
```css
@keyframes przesuwanie {
    from {
        transform: translateX(0);
        background-color: red;
    }
    to {
        transform: translateX(200px);
        background-color: blue;
    }
}

div {
    animation: przesuwanie 3s ease-in-out infinite;
}
```

### Przykład z wieloma klatkami
```css
@keyframes pulsowanie {
    0% {
        transform: scale(1);
        opacity: 1;
    }
    50% {
        transform: scale(1.2);
        opacity: 0.7;
    }
    100% {
        transform: scale(1);
        opacity: 1;
    }
}
```

---

## Wskazówki na kartkówkę:
- Pamiętaj o średnikach na końcu każdej właściwości!
- W skróconych zapisach margin/padding kolejność to: góra, prawy, dół, lewy (jak zegar)
- Gradient liniowy = w linii, promieniowy = z centrum na zewnątrz
- Relative = przesuwa się, ale zajmuje miejsce; Absolute = wypada z układu
- W box-shadow pierwsze dwie liczby to kierunek (x, y), trzecia to rozmycie