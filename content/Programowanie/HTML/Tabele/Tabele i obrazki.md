[Tabelka.png]()
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border="1" width="300px" height="300px">
        <tr>
            <th>1</th> <!-- th to nagłówki tabeli, a td paragrafy -->
            <th>2</th>
        </tr>
        <tr>
            <td>3</td>
            <td>4</td>
        </tr>
    </table>
    <p></p>
    <table border="1" width="300px" height="300px">
        <tr>
            <th colspan="2">Komórka 1 i 2</th>  <!-- sprawia, że tabela ma poprawny układ z nierówną liczbą kolumn -->
        </tr>
        <tr>
            <th>3</th>
            <th>4</th>
        </tr>
    </table>
    <p></p>
    <table border="1" width="300px" height="300px">
        <tr>
            <th rowspan="2">1 i 3</th>  <!-- sprawia, że tabela ma poprawny układ z nierówną liczbą wierszy -->
            <th>2</th>
        </tr>
        <tr>
            <th>4</th>
        </tr>
    </table>
    <p>Tabelka.png</p>
    <img src="tabelka.png" alt="Grafika przedstawiająca warstwy tabeli w języku HTML" title="Warstwy tabeli w HTML" width="600px">
</body>
</html>
```