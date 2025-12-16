**Wszystko jest w jednym pliku *index.php*, tutaj podzieliłem dla widoczności**
#### Część HTML
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Kasa biletowa online</h1>
    <form action="index.php" method="POST">
        <p>Liczba biletów normalnych (22 PLN/szt.):</p>
        <input type="text" name="dorosly">
        <p>Liczba biletów ulgowych (16 PLN/szt.)</p>
        <input type="text" name="ulgowy">
        <p><input type="submit" value="Wyślij"></p>
    </form>
</body>
</html>
```
#### Część PHP
```php
<?php
echo "Liczba bil. norm.: ".$_POST['dorosly']."<br>";
echo "Liczba bil. ulg.: ".$_POST['ulgowy']."<br>";
// Wyświetlenie pustego pola zamiast błędu kiedy nie ma jeszcze żadnych wartości
if (isset($_POST['dorosly']) && isset ($_POST['ulgowy'])) {
    echo "";
    echo "";
}

// Dodatkowo: Wstawianie danych do bazy
$d=$_POST['dorosly'];
$u=$_POST['ulgowy'];
$connect=mysqli_connect('localhost','root','','kasa');
$sql="INSERT into bilety VALUES (NULL,$d,$u);";
$query=mysqli_query($connect,$sql);
echo "<h3>Debug</h3>";
echo "Wstawiono dane do bazy<br>";
echo "Komenda: ".$sql;
mysqli_close($connect);
?>
```