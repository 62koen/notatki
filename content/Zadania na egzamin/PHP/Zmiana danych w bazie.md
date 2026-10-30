*[Baza moje_kino](https://github.com/62koen/notatki/blob/v4/attachments/SQL/Bazy/moje_kino.sql)*
```php
<?php
$connect=mysqli_connect('localhost','root','','moje_kino');
$sql="UPDATE film SET tytul_filmu='Ziemia obiecana', Rezyser='Wajda' WHERE Id='1';";
$query=mysqli_query($connect,$sql);
echo "Zmieniono wartości tabeli.";
mysqli_close($connect);
?>
```