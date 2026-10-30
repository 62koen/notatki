Rzadziej używana ze względu na mniejszą prywatność (wartości z formularza są widoczne w adresie strony).

---

*index.php*
```php
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="get">
        <label for="nazwisko">Nazwisko</label>
        <input type="text" name="nazwisko">
        <br>
        <input type="submit" value="Wyślij">
    </form>
</body>
</html>

<?php
if(isset($_GET['nazwisko'])) {
    echo "<p><strong>".$_GET['nazwisko']."</strong></p>";
}
?>
```

---
Tak to wygląda na pasku adresu:
`http://localhost/mm/Metoda%20GET/?nazwisko=Kowalczyk`