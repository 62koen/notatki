<?php
$connect=mysqli_connect('localhost','root','','salon');
$marka=$_POST['marka'];
$model=$_POST['model'];
$rok=$_POST['rok'];
$sql="INSERT INTO samochody VALUES (NULL, '$marka', '$model', $rok);";
$query=mysqli_query($connect,$sql);
echo $marka;
echo $model;
echo $rok;
mysqli_close($connect);
?>