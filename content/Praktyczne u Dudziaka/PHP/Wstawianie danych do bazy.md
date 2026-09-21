*[Baza moje_kino](https://github.com/62koen/notatki/blob/v4/attachments/SQL/Bazy/moje_kino.sql)*
```php
<?php
$connect=mysqli_connect('localhost','root','','moje_kino');
$ins="INSERT INTO film VALUES 
(NULL,'Psy','Pasikowski','1992'),
(NULL,'Potop','Hoffman','1974');";
$query=mysqli_query($connect,$ins);
echo "Wstawiono dane do bazy.";
mysqli_close($connect);
?>
```