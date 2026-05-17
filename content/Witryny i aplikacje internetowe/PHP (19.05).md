SI: Claude Sonnet 4.6

---

## 1. Instrukcja warunkowa `if` z kilkoma wariantami

```php
<?php
$ocena = 4;

if ($ocena == 6) {
	echo "Celujący";
} elseif ($ocena == 5) {
    echo "Bardzo dobry";
} elseif ($ocena == 4) {
    echo "Dobry";
} elseif ($ocena == 3) {
    echo "Dostateczny";
} elseif ($ocena == 2) {
	echo "Dopuszczający";
} else {
    echo "Niedostateczny";
}
?>
```

> **Pamiętaj:** `elseif` piszemy łącznie (bez spacji) — to poprawna forma w PHP.

---

## 2. Tablice indeksowane i asocjacyjne

```php
<?php
// Tablica indeksowana (klucze: 0, 1, 2...)
$owoce = ["jabłko", "gruszka", "śliwka"];
echo $owoce[0];  // jabłko
echo $owoce[2];  // śliwka

// Tablica asocjacyjna (własne klucze)
$osoba = [
    "imie"   => "Anna",
    "wiek"   => 21,
    "miasto" => "Kraków"
];
echo $osoba["imie"];    // Anna
echo $osoba["miasto"];  // Kraków
?>
```

> **Pamiętaj:** operator `=>` łączy klucz z wartością w tablicy asocjacyjnej.

---

## 3. Instrukcja warunkowa `switch`

```php
<?php
$dzien = 1;

switch ($dzien) {
    case 1:
        echo "Poniedziałek";
        break;
    case 2:
        echo "Wtorek";
        break;
    case 3:
	    echo "Środa";
	    break;
	case 4:
	    echo "Czwartek";
	    break;
	case 5:
	    echo "Piątek";
	    break;
	case 6:
	    echo "Sobota";
	    break;
	case 7:
	    echo "Niedziela";
	    break;
    default:
        echo "Nie ma takiego dnia tygodnia.";
}
?>
```

> **Pamiętaj:** każdy `case` musi kończyć się `break` — bez tego PHP "spada" do kolejnego case!

---

## 4. Pętla `while`

```php
<?php
$i = 1;

while ($i <= 5) {
    echo "Liczba: " . $i . "<br>";
    $i++;  // bez tego pętla będzie nieskończona!
}
?>
```

> **Schemat:** inicjalizacja → warunek → ciało pętli → zmiana zmiennej.

---

## 5. Pętla `for`

```php
<?php
for ($i = 1; $i <= 5; $i++) {
    echo "Liczba: " . $i . "<br>";
}

// Dla tablicy:
$owoce = ["jabłko", "gruszka", "śliwka"];
for ($i = 0; $i < count($owoce); $i++) {
    echo $owoce[$i] . "<br>";
}
?>
```

> **Schemat:** `for (start; warunek; krok)` — wszystko w jednej linii!

---

## 6. Dołączanie plików: `include` i `require`

```php
<?php
// include — jeśli plik nie istnieje: ostrzeżenie, skrypt działa dalej
include "naglowek.php";
include_once "funkcje.php";  // dołącza plik tylko raz

// require — jeśli plik nie istnieje: błąd krytyczny, skrypt się ZATRZYMUJE
require "config.php";
require_once "baza.php";     // require + ochrona przed podwójnym dołączeniem
?>
```

||Brak pliku|Wielokrotne dołączenie|
|---|---|---|
|`include`|ostrzeżenie, skrypt działa|dołącza wielokrotnie|
|`include_once`|ostrzeżenie, skrypt działa|dołącza tylko raz|
|`require`|błąd krytyczny, skrypt stop|dołącza wielokrotnie|
|`require_once`|błąd krytyczny, skrypt stop|dołącza tylko raz|

---

## 7. Definiowanie i wywoływanie funkcji

```php
<?php
// Definicja funkcji
function powitaj($imie) {
    return "Cześć, " . $imie;
}

// Wywołanie funkcji
echo powitaj("Kasia");  // Cześć, Kasia!


function dodaj($a, $b) {
    return $a + $b;
}
echo dodaj(5, 3);  // 8
?>
```

> **Pamiętaj:** `return` zwraca wartość z funkcji. Bez niego funkcja zwraca `null`.