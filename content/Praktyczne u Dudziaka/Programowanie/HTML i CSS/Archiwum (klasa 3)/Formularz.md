[PDF do zadania](https://github.com/62koen/notatki/blob/v4/attachments/HTML/zad1-formularz.pdf)
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- zadanie w PDFie -->
    <p>Wprowadź liczby z przedziału od 10 do 100:</p>
    <input type="number" min="10" max="100">
    <p>Podaj datę urodzin</p>
    <input type="date">
    <p></p>
    <label for="zaznacz">Etykieta pola</label>
    <input type="checkbox" id="zaznacz">
    <p></p>
    <select id="język" multiple>
        <option value="en">angielski</option>
        <option value="de">niemiecki</option>
        <option value="fr">francuski</option>
        <option value="it">włoski</option>
        <option value="ru">rosyjski</option>
    </select>
    <p></p>
    <textarea>Wprowadź swój tekst</textarea>
    <p></p>
    <input list="nazwa listy">
    <datalist id="nazwa listy">
        <option value="wartość 1"></option>
        <option value="wartość 2"></option>
        <option value="wartość 3"></option>
    </datalist>
</body>
</html>
```