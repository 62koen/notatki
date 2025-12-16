- **[Zagadnienia](https://www.kodowanieinfo.pl/wp-content/uploads/2025/10/spr2-witryny.pdf)**
- *Model LLM: Claude Sonnet 4.5*
- *Prompt: Koen[^1]*

## 1. Sposoby wprowadzania stylów CSS

### Styl wewnętrzny - znacznik `<style>` w sekcji `<head>`

```html
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background-color: lightblue;
        }
        p {
            color: navy;
        }
    </style>
</head>
<body>
    <p>Tekst ostylowany</p>
</body>
</html>
```

### Styl zewnętrzny - odwołanie do pliku CSS

**Plik HTML:**
```html
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <p>Tekst ostylowany</p>
</body>
</html>
```

**Plik style.css:**
```css
body {
    background-color: lightblue;
}
p {
    color: navy;
}
```

## 2. Sposoby wprowadzania klas i identyfikatorów

### Klasy (class)
Klasy używamy gdy chcemy ostylować wiele elementów w ten sam sposób. W CSS poprzedzamy nazwę klasy kropką (`.`).

```html
<div class="ramka">Treść 1</div>
<div class="ramka">Treść 2</div>
<p class="ramka">Treść 3</p>
```

```css
.ramka {
    border: 2px solid black;
    padding: 10px;
}
```

### Identyfikatory (id)
Identyfikatory są unikalne - każdy element może mieć tylko jeden id, a dany id powinien wystąpić raz na stronie. W CSS poprzedzamy nazwę identyfikatora kratką (`#`).

```html
<div id="naglowek">Główny nagłówek</div>
<div id="stopka">Stopka strony</div>
```

```css
#naglowek {
    background-color: blue;
    color: white;
}

#stopka {
    font-size: 12px;
    text-align: center;
}
```

## 3. Ostylowanie właściwości bloku (div)

```html
<div class="blok">
    Wyśrodkowany tekst w bloku
</div>
```

```css
.blok {
    /* Tło bloku */
    background-color: lightgray;
    
    /* Szerokość i wysokość bloku */
    width: 300px;
    height: 150px;
    
    /* Obramowanie linią ciągłą z grubością i kolorem */
    border: 3px solid red;
    
    /* Wyśrodkowanie napisu w poziomie */
    text-align: center;
}
```

**Wyjaśnienie:**
- `background-color` - ustawia kolor tła
- `width` i `height` - określają wymiary bloku
- `border` - format: `grubość styl kolor` (np. `3px solid red`)
- `text-align: center` - wyrównuje tekst do środka w poziomie

## 4. Pseudoklasa :hover

Pseudoklasa `:hover` aktywuje się, gdy najedziemy kursorem na element.

### Przykład dla przycisku:
```html
<button class="przycisk">Najedź na mnie</button>
```

```css
.przycisk {
    background-color: blue;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}

.przycisk:hover {
    background-color: darkblue;
    transform: scale(1.1);
}
```

### Przykład dla akapitu:
```html
<p class="akapit">Tekst, który zmieni kolor</p>
```

```css
.akapit {
    color: black;
    transition: color 0.3s;
}

.akapit:hover {
    color: red;
    font-weight: bold;
}
```

## 5. Pseudoklasa strukturalna :first-child

Pseudoklasa `:first-child` wybiera pierwszy element potomny w kontenerze.

```html
<div class="kontener">
    <p>Pierwszy akapit - będzie czerwony</p>
    <p>Drugi akapit - normalny</p>
    <p>Trzeci akapit - normalny</p>
</div>
```

```css
.kontener p:first-child {
    color: red;
    font-weight: bold;
    font-size: 20px;
}

.kontener p {
    color: black;
}
```

**Wyjaśnienie:** Tylko pierwszy element `<p>` w kontenerze otrzyma czerwony kolor i pogrubienie.

## 6. Pseudoelementy ::first-letter, ::before i ::after

### Pseudoelement ::first-letter
Styluje pierwszą literę tekstu.

```html
<p class="akapit">Lorem ipsum dolor sit amet.</p>
```

```css
.akapit::first-letter {
    font-size: 32px;
    color: red;
    font-weight: bold;
    float: left;
    margin-right: 5px;
}
```

### Pseudoelement ::before
Dodaje treść przed elementem.

```html
<p class="cytat">Wiedza to potęga</p>
```

```css
.cytat::before {
    content: "❝ ";
    color: blue;
    font-size: 24px;
    font-weight: bold;
}
```

### Pseudoelement ::after
Dodaje treść po elemencie.

```html
<p class="uwaga">Ważna informacja</p>
```

```css
.uwaga::after {
    content: " ⚠";
    color: orange;
    font-size: 20px;
}
```

### Przykład łączący ::before i ::after:
```css
.ramka-tekst::before {
    content: "[ ";
    color: gray;
}

.ramka-tekst::after {
    content: " ]";
    color: gray;
}
```

## 7. Definiowanie kolorów w zapisie heksadecymalnym

### Zapis trzycyfrowy
Format: `#RGB` - każda cyfra jest powielana

```css
.element1 {
    color: #F00;  /* równoznaczne z #FF0000 - czerwony */
}

.element2 {
    color: #0F0;  /* równoznaczne z #00FF00 - zielony */
}

.element3 {
    color: #00F;  /* równoznaczne z #0000FF - niebieski */
}

.element4 {
    color: #ABC;  /* równoznaczne z #AABBCC */
}
```

### Zapis sześciocyfrowy
Format: `#RRGGBB` - pełna kontrola nad wartościami

```css
.element1 {
    color: #FF0000;  /* czerwony */
}

.element2 {
    color: #00FF00;  /* zielony */
}

.element3 {
    color: #0000FF;  /* niebieski */
}

.element4 {
    color: #FFA500;  /* pomarańczowy */
}

.element5 {
    color: #808080;  /* szary */
}
```

**Wartości:** każda para cyfr (RR, GG, BB) przyjmuje wartości od 00 do FF (0-255 w systemie dziesiętnym)

## 8. Definiowanie kolorów w modelach RGB i RGBA

### Model RGB
Format: `rgb(red, green, blue)` - wartości od 0 do 255

```css
.element1 {
    color: rgb(255, 0, 0);      /* czerwony */
}

.element2 {
    color: rgb(0, 255, 0);      /* zielony */
}

.element3 {
    color: rgb(0, 0, 255);      /* niebieski */
}

.element4 {
    background-color: rgb(255, 165, 0);  /* pomarańczowy */
}
```

### Model RGBA
Format: `rgba(red, green, blue, alpha)` - alpha to przezroczystość od 0 do 1

```css
.element1 {
    background-color: rgba(255, 0, 0, 0.5);  /* półprzezroczysty czerwony */
}

.element2 {
    background-color: rgba(0, 0, 255, 0.3);  /* przezroczysty niebieski */
}

.element3 {
    background-color: rgba(0, 0, 0, 0.8);    /* prawie nieprzezroczyste czarne */
}

.element4 {
    color: rgba(100, 100, 100, 1);           /* nieprzezroczyste (alpha = 1) */
}
```

**Parametr alpha:**
- `0` - całkowicie przezroczyste
- `0.5` - półprzezroczyste
- `1` - całkowicie nieprzezroczyste

## 9. Model HSL i właściwość opacity

### Model HSL
Format: `hsl(hue, saturation, lightness)`

- **Hue (odcień)** - wartość kąta od 0 do 360 stopni na kole kolorów
  - 0° (lub 360°) = czerwony
  - 120° = zielony
  - 240° = niebieski
- **Saturation (nasycenie)** - procent od 0% do 100%
  - 0% = szary
  - 100% = pełne nasycenie
- **Lightness (jasność)** - procent od 0% do 100%
  - 0% = czarny
  - 50% = normalny kolor
  - 100% = biały

```css
.element1 {
    color: hsl(0, 100%, 50%);      /* czerwony */
}

.element2 {
    color: hsl(120, 100%, 50%);    /* zielony */
}

.element3 {
    color: hsl(240, 100%, 50%);    /* niebieski */
}

.element4 {
    background-color: hsl(60, 100%, 50%);   /* żółty */
}

.element5 {
    background-color: hsl(0, 0%, 50%);      /* szary (brak nasycenia) */
}
```

### Model HSLA
Format: `hsla(hue, saturation, lightness, alpha)`

```css
.element1 {
    background-color: hsla(0, 100%, 50%, 0.5);    /* półprzezroczysty czerwony */
}

.element2 {
    background-color: hsla(120, 100%, 50%, 0.3);  /* przezroczysty zielony */
}
```

### Właściwość opacity
Ustawia przezroczystość całego elementu (wraz z zawartością) - wartości od 0 do 1

```css
.element1 {
    background-color: red;
    opacity: 0.5;  /* cały element będzie półprzezroczysty */
}

.element2 {
    opacity: 0;    /* całkowicie niewidoczny */
}

.element3 {
    opacity: 1;    /* całkowicie nieprzezroczysty (domyślne) */
}

.element4 {
    opacity: 0.8;  /* lekko przezroczysty */
}
```

**Różnica między opacity a rgba/hsla:**
- `opacity` - wpływa na cały element (tło, tekst, obramowanie)
- `rgba/hsla` - wpływa tylko na konkretną właściwość (np. samo tło)

---

## Podsumowanie najważniejszych punktów

✓ Style można dodawać przez `<style>` w `<head>` lub zewnętrzny plik CSS  
✓ Klasy oznaczamy `.` a identyfikatory `#`  
✓ Blok stylujemy przez: `background-color`, `width`, `height`, `border`, `text-align`  
✓ `:hover` reaguje na najechanie kursorem  
✓ `:first-child` wybiera pierwszy element potomny  
✓ `::first-letter`, `::before`, `::after` to pseudoelementy  
✓ Kolory hex: `#RGB` (3 cyfry) lub `#RRGGBB` (6 cyfr)  
✓ RGB: `rgb(0-255, 0-255, 0-255)`, RGBA dodaje przezroczystość  
✓ HSL: `hsl(0-360, 0-100%, 0-100%)`, HSLA dodaje przezroczystość  
✓ `opacity` ustawia przezroczystość całego elementu (0-1)

[^1]: Marcel
