<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn=mysqli_connect('localhost','root','','przychodnia');
    $sql="SELECT id, imie, nazwisko FROM lekarze;";
    $query=mysqli_query($conn,$sql);
    while($linia=mysqli_fetch_array($query)) {
        echo "<a href='wizyty.php?id=$linia[0]&imie=$linia[1]&nazwisko=$linia[2]'>$linia[0]. dr $linia[1] $linia[2]</a><br>";
    }
    mysqli_close($conn);
    ?>    
</body>
</html>