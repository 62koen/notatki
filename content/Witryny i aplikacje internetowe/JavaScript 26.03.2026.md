SI: Claude Sonnet 4.6

---
## Treść zadania
Należy stworzyć plik index.html zawierający formularz z dwoma polami tekstowymi, przyciskiem typu **button** o wartości oblicz oraz przyciskiem typu **reset** o wartości wyczyść.
Formularz powinien wyglądać tak jak to jest pokazane poniżej. Dwa górne wiersze powinny być wykonane przy pomocy **znaczników tabeli**. Przycisk wyczyść ma za zadanie usuwać wartości liczbowe wprowadzone do pól.

Przycisk oblicz powinien uruchamiać skrypt w języku JavaScript. Akapit (p) do wyświetlania wyniku powinien być tworzony dynamicznie w kodzie JavaScript.
Wynik działania wyżej wymienionego skryptu (obliczenie wartości zakupionego towaru) jest również pokazany na poniższym obrazie.

Zakładamy w tym zadaniu 2 rodzaje towarów:
- 1 – cena za 1 kg to 20 zł
- 2 – cena za 1 kg to 10 zł

W przypadku wpisania w polu Rodzaj towaru wartości innej niż 1 lub 2 powinien jako wynik działania skryptu pojawić się napis **Nie ma takiego towaru**.

| Towar | Cena za 1 kg            |
| ----- | ----------------------- |
| 1     | 20 zł                   |
| 2     | 10 zł                   |
| inny  | *Nie ma takiego towaru* |
![](https://github.com/62koen/notatki/blob/v4/attachments/img/skrypt1.png?raw=true)
> **Obraz (powyżej)** pokazujący formularz do opracowania w pliku index.html oraz wynik działania skryptu JavaScript

---

## Kod

```html
<body>
<form>
<table>
  <tr>
    <td>Rodzaj towaru (1 lub 2):</td>
    <td><input type="text" id="rodzaj"></td>
  </tr>
  <tr>
    <td>Ilość towaru [kg]:</td>
    <td><input type="text" id="ilosc"></td>
  </tr>
</table>
<br>
<input type="button" value="oblicz" id="bt">
<input type="reset" value="wyczyść">
</form>

<script>
function koszt()
{
  let p1 = document.getElementById("rodzaj").value;
  let p2 = document.getElementById("ilosc").value;

  if (p1 == 1)
    var wynik = p2 * 20;
  else if (p1 == 2)
    var wynik = p2 * 10;
  else
  {
    var wy = " Nie ma takiego towaru";
  }

  if (p1 == 1 || p1 == 2)
    wy = "Wartość zakupionego towaru wynosi: " + wynik + " zł";

  // Tworzenie akapitu z identyfikatorem do wyświetlenia w nim wyniku
  let el = document.createElement("p");
  el.setAttribute("id", "wynik");
  document.body.appendChild(el);

  // Przypisanie wyniku do akapitu
  document.getElementById("wynik").innerHTML = wy;
}

document.getElementById("bt").addEventListener("click", koszt);
</script>
</body>
```

---

## Kluczowe elementy do zapamiętania

- Układ formularza → `<table>` z dwoma `<tr>`
- Przycisk oblicz → `type="button"` z `id="bt"`
- Listener → `addEventListener("click", koszt)`
- Tworzenie akapitu → `createElement("p")` → `setAttribute("id", "wynik")` → `appendChild(el)`
- Wyświetlenie wyniku → `getElementById("wynik").innerHTML = wy`
- Obliczenia: towar 1 = `p2 * 20`, towar 2 = `p2 * 10`
- Zły rodzaj → `"Nie ma takiego towaru"`
