<?php
$connect=mysqli_connect('localhost','root','','dane2');
$sql="SELECT nazwa, ilosc, opis, cena, zdjecie FROM produkty WHERE nazwa='gruszka';";
$query=mysqli_query($connect,$sql);
$tablica=mysqli_fetch_array($query);
echo "<div><img src='$tablica[4]' alt='warzywniak'><h5>$tablica[0]</h5><p>opis: $tablica[2]</p><p>na stanie: $tablica[1]</p><h2>$tablica[3]</h2></div>";
mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            font-family: Garamond;
        }
        h5 {
            background-color: #00600F;
            color: white;
            font-size: 200%;
            text-align: center;
            margin: 0px;
        }
        h2 {
            text-align: right;
        }
        div {
            margin: 10px;
            border: 1px solid #00600F;
            width: 300px;
        }
    </style>
</head>
<body>
    
</body>
</html>