## [Zagadnienia](https://www.kodowanieinfo.pl/wp-content/uploads/2025/09/spr1-witryny-1.pdf)
- *Model LLM: Claude Sonnet 4.5*
- *Prompty, poprawki: Koen[^1]*
- *Dzięki za notatki Hubertowi Pawłowskiemu i Łukaszowi za inspirację*

## 1. Znacznik obrazu (img) ze wszystkimi atrybutami

```html
<img src="sciezka/do/obrazu.jpg" 
     alt="Opis obrazu" 
     width="500" 
     height="300" 
     title="Podpowiedź po najechaniu" 
     loading="lazy">
```

**Najważniejsze atrybuty:**
- `src` - ścieżka do pliku graficznego (WYMAGANY)
- `alt` - tekst alternatywny, opis obrazu (WYMAGANY)
- `width` - szerokość w pikselach
- `height` - wysokość w pikselach
- `title` - tekst wyświetlany po najechaniu myszką
- `loading` - lazy/eager (opóźnione/natychmiastowe ładowanie)

---

## 2. Podstawowe znaczniki formatowania tekstu

```html
<!-- Akapit (paragraf) -->
<p>To jest akapit tekstu.</p>

<!-- Podkreślenie ważności tekstu -->
<strong>Ważny tekst</strong>

<!-- Pogrubienie tekstu -->
<b>Pogrubiony tekst</b>

<!-- Pochylenie tekstu (kursywa) -->
<i>Tekst pochylony</i>
<em>Tekst z emfazą</em>

<!-- Podkreślenie tekstu -->
<u>Podkreślony tekst</u>

<!-- Odnośnik (link) -->
<a href="https://www.strona.pl">Kliknij tutaj</a>
<a href="strona.html" target="_blank">Link w nowej karcie</a>

<!-- Przejście do nowej linii -->
To jest pierwsza linia<br>
To jest druga linia
```

---

## 3. Listy w HTML

### Lista punktowana (nienumerowana)
```html
<ul> <!-- unordered list -->
    <li>Pierwszy element</li>
    <li>Drugi element</li>
    <li>Trzeci element</li>
</ul>
```

### Lista numerowana
```html
<ol> <!-- ordered list -->
    <li>Pierwszy krok</li>
    <li>Drugi krok</li>
    <li>Trzeci krok</li>
</ol>
```

### Lista definicji
```html
<dl> <!-- definition list -->
    <dt>HTML</dt> <!-- definition term -->
    <dd>Język znaczników do tworzenia stron internetowych</dd> <!-- definition description -->
    
    <dt>CSS</dt>
    <dd>Język stylów do formatowania wyglądu strony</dd>
    
    <dt>JavaScript</dt>
    <dd>Język programowania do dodawania interaktywności</dd>
</dl>
```

---

## 4. Tabela ze scalonymi kolumnami

```html
<table border="1">
    <tr>
        <td colspan="2">komórka 1 i 2</td>
    </tr>
    <tr>
        <td>komórka 3</td>
        <td>komórka 4</td>
    </tr>
</table>
```

**Atrybut:** `colspan="liczba"` - scala komórki w poziomie (kolumny)

---

## 5. Tabela ze scalonymi wierszami

```html
<table border="1">
    <tr>
        <td rowspan="2">komórka 1 i 3</td>
        <td>komórka 2</td>
    </tr>
    <tr>
        <td>komórka 4</td>
    </tr>
</table>
```

**Atrybut:** `rowspan="liczba"` - scala komórki w pionie (wiersze)

---

## 6. Pole tekstowe formularza z etykietą

```html
<!-- Skrócony przykład -->
<label for="imie">Imię:</label>
<input type="text" id="imie" name="imie">

<!-- Pełny przykład z dodatkowymi atrybutami -->
<label for="email">Email:</label>
<input type="email" 
       id="email" 
       name="email" 
       placeholder="Wprowadź email" 
       required 
       maxlength="50">
<!-- input, tak jak img, nie ma znacznika zamykającego -->
```

**Ważne atrybuty:**
- `type="text"` - typ pola tekstowego
- `type="email"` - email
- `type="password"` - hasło
- `type="number"` - liczby
- `type="tel"` - telefon
- `type="url"` - strona internetowa
- `type="search"` - wyszukiwanie
- `type="date"` - data
- `type="time"` - czas
- `id` - identyfikator (połączony z **label** przez for)
- `name` - nazwa pola (wysyłana z formularzem)
- `placeholder` - tekst podpowiedzi
- `required` - pole wymagane
- `maxlength` - maksymalna liczba znaków
- `minlength` - minimalna liczba znaków

[[#Dodatkowe typy pól input]]

---

## 7. Pole textarea z wszystkimi atrybutami

```html
<label for="wiadomosc">Wiadomość:</label>
<textarea id="wiadomosc" 
          name="wiadomosc" 
          rows="5" 
          cols="40" 
          placeholder="Wpisz swoją wiadomość..." 
          required 
          maxlength="500" 
          wrap="soft">
Domyślna treść textarea
</textarea>
```

**Atrybuty textarea:**
- `rows` - liczba widocznych wierszy
- `cols` - liczba widocznych kolumn (znaków)
- `name` - nazwa pola
- `id` - identyfikator
- `placeholder` - tekst podpowiedzi
- `required` - pole wymagane
- `minlength` - minimalna liczba znaków
- `maxlength` - maksymalna liczba znaków
- `wrap` - sposób zawijania tekstu (soft/hard)
- `readonly` - pole tylko do odczytu
- `disabled` - pole wyłączone

---

## 8. Przyciski formularza

### Submit (wysyłanie formularza)
```html
<input type="submit" value="Wyślij formularz">
<button type="submit">Wyślij</button>
```

### Reset (resetowanie formularza)
```html
<input type="reset" value="Wyczyść formularz">
<button type="reset">Wyczyść</button>
```

### Button (zwykły przycisk)
```html
<input type="button" value="Kliknij mnie" onclick="alert('Kliknięto!')">
<button type="button">Zwykły przycisk</button>
```

**Różnica:** `<input type="button">` vs `<button>` - button może zawierać HTML wewnątrz, input tylko tekst w value.

---

## 9. Pole select z opcjami i atrybutami

```html
<!-- Podstawowy select -->
<label for="kraj">Wybierz kraj:</label>
<select id="kraj" name="kraj">
    <option value="">-- Wybierz --</option>
    <option value="pl">Polska</option>
    <option value="de">Niemcy</option>
    <option value="fr">Francja</option>
</select>

<!-- Select z opcją domyślnie wybraną -->
<select name="kolor">
    <option value="czerwony">Czerwony</option>
    <option value="niebieski" selected>Niebieski</option>
    <option value="zielony">Zielony</option>
</select>

<!-- Select z wielokrotnym wyborem -->
<select name="hobby" multiple size="4">
    <option value="sport">Sport</option>
    <option value="muzyka">Muzyka</option>
    <option value="czytanie">Czytanie</option>
    <option value="podroze">Podróże</option>
</select>
```

**Atrybuty select:**
- `name` - nazwa pola
- `id` - identyfikator
- `multiple` - umożliwia wielokrotny wybór
- `size` - liczba widocznych opcji
- `required` - pole wymagane
- `disabled` - pole wyłączone

**Atrybuty option:**
- `value` - wartość wysyłana z formularzem
- `selected` - opcja wybrana domyślnie
- `disabled` - opcja wyłączona

---

## Dodatkowe typy pól input

### Pola tekstowe i liczbowe
```html
<!-- Email (walidacja @) -->
<input type="email" name="email" placeholder="twoj@email.pl">

<!-- Hasło (ukrywa znaki) -->
<input type="password" name="haslo" minlength="8">

<!-- Liczba -->
<input type="number" name="wiek" min="1" max="120" step="1">

<!-- Telefon -->
<input type="tel" name="telefon" placeholder="+48 123 456 789">

<!-- URL/adres strony -->
<input type="url" name="strona" placeholder="https://example.com">

<!-- Wyszukiwarka -->
<input type="search" name="szukaj" placeholder="Szukaj...">
```

### Daty i czas
```html
<!-- Data -->
<input type="date" name="data" min="2025-01-01" max="2025-12-31">

<!-- Czas -->
<input type="time" name="czas" min="09:00" max="17:00">

<!-- Data i czas -->
<input type="datetime-local" name="spotkanie">

<!-- Miesiąc -->
<input type="month" name="miesiac">

<!-- Tydzień -->
<input type="week" name="tydzien">
```

### Pola wyboru
```html
<!-- Checkbox (pole wyboru - można zaznaczyć wiele) -->
<input type="checkbox" id="zgoda" name="zgoda" value="tak" checked>
<label for="zgoda">Akceptuję regulamin</label>

<!-- Radio (opcja - można wybrać tylko jedną z grupy) -->
<input type="radio" id="mezczyzna" name="plec" value="m">
<label for="mezczyzna">Mężczyzna</label>

<input type="radio" id="kobieta" name="plec" value="k" checked>
<label for="kobieta">Kobieta</label>
```

### Inne przydatne typy
```html
<!-- Kolor (wybór koloru) -->
<input type="color" name="kolor" value="#ff0000">

<!-- Zakres (suwak) -->
<input type="range" name="glosnosc" min="0" max="100" value="50">

<!-- Plik (upload pliku) -->
<input type="file" name="plik" accept=".pdf,.doc,.docx">
<input type="file" name="zdjecie" accept="image/*" multiple>

<!-- Ukryte pole -->
<input type="hidden" name="id" value="12345">
```

### Ważne atrybuty do wszystkich typów
```html
<input type="text" 
       name="pole"           <!-- nazwa do wysłania -->
       id="pole"             <!-- identyfikator -->
       value="domyślna"      <!-- wartość początkowa -->
       placeholder="Wpisz"   <!-- tekst podpowiedzi -->
       required              <!-- pole wymagane -->
       readonly              <!-- tylko do odczytu -->
       disabled              <!-- wyłączone -->
       maxlength="50"        <!-- max długość tekstu -->
       minlength="5">        <!-- min długość tekstu -->
```

---

## Wskazówki na sprawdzian:

1. **Pamiętaj o zamykaniu znaczników!** `<p>tekst</p>`
2. **Alt w img jest WYMAGANY** - zawsze go dodawaj
3. **colspan** = kolumny (poziomo), **rowspan** = wiersze (pionowo)
4. **Label i input** łączymy przez `for` i `id`
5. **Textarea** ma znacznik zamykający, **input** nie ma
6. **Select** zawiera znaczniki `<option>`
7. **Różnica między `<strong>` a `<b>`**: strong = ważność semantyczna, b = tylko wizualne pogrubienie

[^1]: Marcel
