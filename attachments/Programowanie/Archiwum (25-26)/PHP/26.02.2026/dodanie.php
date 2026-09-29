<?php
$nazwa=$_POST['nazwa'];
$doplata=$_POST['doplata'];
$connect=mysqli_connect('localhost','root','','samochody');
// trzeba dodać apostrofy do wartości tekstowych
$sql="INSERT INTO kolory VALUES (NULL, '$nazwa', $doplata);";
$query=mysqli_query($connect,$sql);
echo $sql;
mysqli_close($connect);
?>