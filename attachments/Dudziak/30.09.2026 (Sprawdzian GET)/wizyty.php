<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $id = $_GET['id'];
    $imie = $_GET['imie'];
    $nazwisko = $_GET['nazwisko'];
    echo "<h2>Lekarz: $imie $nazwisko</h2>";
    $conn=mysqli_connect('localhost','root','','przychodnia');
    $sql="SELECT data_wizyty, godzina, pacjent, gabinet FROM harmonogram WHERE lekarz_id=$id;";
    $query=mysqli_query($conn,$sql);
    while($linia=mysqli_fetch_array($query)) {
        echo "<h3>$linia[0] $linia[1]</h3>";
        echo "<p>$linia[2]: $linia[3]</p>";
    }
    mysqli_close($conn);
    ?>
</body>
</html>