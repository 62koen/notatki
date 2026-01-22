## 1. Dwa sposoby wprowadzania kodu JavaScript do HTML

### Sposób 1: Wewnątrz pliku HTML
```html
<!DOCTYPE html>
<html>
<head>
    <title>Moja strona</title>
</head>
<body>

    <script>
        // Kod JavaScript wpisany bezpośrednio w HTML
        console.log("To jest JavaScript wewnątrz HTML");
    </script>
</body>
</html>
```

### Sposób 2: Zewnętrzny plik JavaScript
```html
<!DOCTYPE html>
<html>
<head>
    <title>Moja strona</title>
</head>
<body>
    
    <!-- Odwołanie do zewnętrznego pliku -->
    <script src="skrypt.js"></script>
</body>
</html>
```

Plik **skrypt.js**:
```javascript
console.log("To jest kod z zewnętrznego pliku");
```

---

## 2. Trzy podstawowe okienka informacyjne

### Alert - po prostu wyświetla informację
```javascript
alert("To jest zwykła wiadomość");
```

### Confirm - pyta użytkownika (OK/Anuluj)
```javascript
let odpowiedz = confirm("Czy na pewno chcesz kontynuować?");
// zwraca true jeśli OK, false jeśli Anuluj

if (odpowiedz) {
    alert("Wybrałeś OK");
} else {
    alert("Wybrałeś Anuluj");
}
```

### Prompt - pobiera tekst od użytkownika
```javascript
let imie = prompt("Jak masz na imię?");
alert("Cześć " + imie + "!");

// Można też ustawić wartość domyślną:
let wiek = prompt("Ile masz lat?", "18");
```

---

## 3. Instrukcja warunkowa IF - różne warianty

### Podstawowy IF
```javascript
let wiek = 18;

if (wiek >= 18) {
    console.log("Jesteś pełnoletni");
}
```

### IF z ELSE
```javascript
let temperatura = 25;

if (temperatura > 30) {
    console.log("Jest gorąco");
} else {
    console.log("Nie jest tak gorąco");
}
```

### IF z ELSE IF
```javascript
let ocena = 4;

if (ocena == 6) {
    console.log("Celujący!");
} else if (ocena == 5) {
    console.log("Bardzo dobry");
} else if (ocena == 4) {
    console.log("Dobry");
} else if (ocena == 3) {
    console.log("Dostateczny");
} else {
    console.log("Niedostateczny");
}
```

### IF z wieloma warunkami (operatory logiczne)
```javascript
let wiek = 20;
let maProawJazdy = true;

// Operator AND (&&) - oba warunki muszą być prawdziwe
if (wiek >= 18 && maPrawoJazdy) {
    console.log("Możesz prowadzić samochód");
}

// Operator OR (||) - przynajmniej jeden warunek musi być prawdziwy
if (wiek < 18 || !maPrawoJazdy) {
    console.log("Nie możesz prowadzić");
}
```

---

## 4. Instrukcja warunkowa SWITCH

```javascript
let dzienTygodnia = 3;

switch (dzienTygodnia) {
    case 1:
        console.log("Poniedziałek");
        break;
    case 2:
        console.log("Wtorek");
        break;
    case 3:
        console.log("Środa");
        break;
    case 4:
        console.log("Czwartek");
        break;
    case 5:
        console.log("Piątek");
        break;
    case 6:
        console.log("Sobota");
        break;
    case 7:
        console.log("Niedziela");
        break;
    default:
        console.log("Nieprawidłowy dzień");
}
```

### Przykład ze stringami
```javascript
let owoc = "jabłko";

switch (owoc) {
    case "jabłko":
        console.log("Wybrałeś jabłko - 2 zł/kg");
        break;
    case "banan":
        console.log("Wybrałeś banana - 5 zł/kg");
        break;
    case "pomarańcza":
        console.log("Wybrałeś pomarańczę - 3 zł/kg");
        break;
    default:
        console.log("Nie mamy tego owocu");
}
```

**Ważne:** Pamiętaj o `break`! Bez niego kod będzie wykonywał się dalej.

---

## 5. Pętla FOR

### Podstawowa pętla FOR
```javascript
// Wyświetli liczby od 0 do 4
for (let i = 0; i < 5; i++) {
    console.log("Liczba: " + i);
}
```

### Inne przykłady
```javascript
// Liczby od 1 do 10
for (let i = 1; i <= 10; i++) {
    console.log(i);
}

// Liczby parzyste od 0 do 20
for (let i = 0; i <= 20; i += 2) {
    console.log(i);
}

// Odliczanie wstecz
for (let i = 10; i >= 0; i--) {
    console.log(i);
}
```

### Pętla FOR z tablicą
```javascript
let owoce = ["jabłko", "banan", "gruszka"];

for (let i = 0; i < owoce.length; i++) {
    console.log(owoce[i]);
}
```

---

## 6. Pętla WHILE

```javascript
// Podstawowa pętla while
let licznik = 0;

while (licznik < 5) {
    console.log("Licznik: " + licznik);
    licznik++;
}
```

### Inny przykład
```javascript
let liczba = 1;

while (liczba <= 10) {
    console.log(liczba);
    liczba++;
}
```

### Przykład z warunkiem logicznym
```javascript
let haslo = "";

while (haslo != "tajne") {
    haslo = prompt("Podaj hasło:");
}

alert("Hasło prawidłowe!");
```

**Uwaga:** Pętla while sprawdza warunek **przed** wykonaniem kodu.

---

## 7. Pętla DO WHILE

```javascript
let licznik = 0;

do {
    console.log("Licznik: " + licznik);
    licznik++;
} while (licznik < 5);
```

### Różnica między WHILE a DO WHILE
```javascript
// DO WHILE wykona się przynajmniej raz
let x = 10;

do {
    console.log("To się wykona raz, mimo że x >= 10");
} while (x < 5);

// WHILE się w ogóle nie wykona
let y = 10;

while (y < 5) {
    console.log("To się NIE wykona");
}
```

**Kluczowa różnica:** DO WHILE sprawdza warunek **po** wykonaniu kodu, więc kod wykona się przynajmniej raz.

---

## 8. Tablice w JavaScript

### Definiowanie tablic
```javascript
// Sposób 1 - najpopularniejszy
let owoce = ["jabłko", "banan", "gruszka"];

// Sposób 2
let liczby = [1, 2, 3, 4, 5];

// Sposób 3 - różne typy danych w jednej tablicy
let mieszanka = ["tekst", 42, true, null];

// Sposób 4 - pusta tablica
let pusta = [];
```

### Wyświetlanie elementów na podstawie indeksu

**Ważne:** Indeksy zaczynają się od 0!

```javascript
let owoce = ["jabłko", "banan", "gruszka", "pomarańcza"];

// Wyświetlanie pojedynczych elementów
console.log(owoce[0]);  // jabłko
console.log(owoce[1]);  // banan
console.log(owoce[2]);  // gruszka
console.log(owoce[3]);  // pomarańcza

// Pierwszy element
console.log("Pierwszy owoc: " + owoce[0]);

// Ostatni element
console.log("Ostatni owoc: " + owoce[owoce.length - 1]);
```

### Przydatne właściwości i metody tablic
```javascript
let zwierzeta = ["pies", "kot", "chomik"];

// Długość tablicy
console.log(zwierzeta.length);  // 3

// Dodawanie elementu na końcu
zwierzeta.push("papuga");
console.log(zwierzeta);  // ["pies", "kot", "chomik", "papuga"]

// Zmiana wartości elementu
zwierzeta[1] = "królik";
console.log(zwierzeta[1]);  // królik
```

### Wyświetlanie całej tablicy
```javascript
let kolory = ["czerwony", "niebieski", "zielony"];

// Sposób 1 - pętla FOR
for (let i = 0; i < kolory.length; i++) {
    console.log("Kolor " + i + ": " + kolory[i]);
}

// Sposób 2 - bezpośrednio
console.log(kolory);  // wyświetli całą tablicę
```

---

## 🎯 Szybka ściąga

- **Alert** = wyświetl wiadomość
- **Confirm** = zapytaj (true/false)
- **Prompt** = pobierz tekst od użytkownika
- **IF** = jeśli warunek jest prawdziwy
- **SWITCH** = wybór z wielu opcji (nie zapomnij break!)
- **FOR** = pętla z licznikiem (znamy liczbę powtórzeń)
- **WHILE** = pętla dopóki warunek prawdziwy (sprawdza przed)
- **DO WHILE** = wykona się minimum raz (sprawdza po)
- **Tablica[indeks]** = pamiętaj, że indeksy od 0!