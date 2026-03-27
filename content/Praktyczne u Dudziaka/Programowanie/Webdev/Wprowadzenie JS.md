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
        // komentarz w jednej linii /* komentarz wieloliniowy */
        document.write("<a href=\"spis.html\">Spis treści</a> <br>"); // backslash pozwala wprowadzić znak zastrzeżony/specjalny
        document.write("<img alt='logo JavaScript' src='js.png'<br>"); // działa też apostrof
        var x=30;
        document.write("Zmienna x: "+x+"<br>");
        var imie="Jakub";
        var nazwisko="Kowalski";
        document.write("Uczeń nazywa się: "+imie+" "+nazwisko+"<br>");
    </script>
</body>
</html>
```