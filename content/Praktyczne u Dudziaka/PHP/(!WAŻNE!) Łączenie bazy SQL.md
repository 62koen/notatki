*[Baza sklep](https://github.com/62koen/notatki/blob/v4/attachments/SQL/Bazy/sklep.sql)*
## Lista punktowana
```php
<?php
    $connect=mysqli_connect('localhost','root','','sklep'); // komenda połączenia
    $sql="SELECT nazwa FROM towary WHERE promocja=1"; // określenie kwerendy
    $query=mysqli_query($connect,$sql); // wysłanie zapytania do bazy
    echo "<ul>"; // otwarcie listy punktowanej
    while ($linia=mysqli_fetch_array($query)) { // wyświetlanie tabeli sql w tabeli na stronie
        echo "<li>".$linia[0]."</li>"; // punkty od pierwszego rekordu (0)
    }
    echo "</ul>"; // zamknięcie listy punktowanej
    mysqli_close($connect); // zamknięcie połączenia
?>
```
## Tabela
```php
<?php
$connect=mysqli_connect('localhost','root','','sklep');
$sql="SELECT * FROM towary WHERE promocja=1";
$query=mysqli_query($connect,$sql);
echo "<table border='3'>";
while ($linia=mysqli_fetch_array($query)) {
    echo "<tr>";
    // indeksy, czyli wszystkie kolumny jakie wyjdą nam z polecenia w $sql, zaczynając od 0; musimy wcześniej znać ich liczbę, co można sprawdzić w phpMyAdmin
    echo "<td>$linia[0]</td>"; // indeks 0 (pierwsza kolumna)
    echo "<td>$linia[1]</td>";
    echo "<td>$linia[2]</td>";
    echo "<td>$linia[3]</td>";
    echo "<td>$linia[4]</td>";
    // pięć kolumn
    echo "</tr>";
}
echo "</table>";
mysqli_close($connect);
?>
```