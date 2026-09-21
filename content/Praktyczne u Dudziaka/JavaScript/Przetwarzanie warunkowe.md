*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <script>
        var liczba=Number(prompt("Podaj liczbę: "));
        var wynik=(liczba>0)? "jest większa od 0":"nie jest większa od 0"; // znak zapytania oznacza warunek
        alert("Liczba "+liczba+" "+wynik);
    </script>
</body>
</html>
```