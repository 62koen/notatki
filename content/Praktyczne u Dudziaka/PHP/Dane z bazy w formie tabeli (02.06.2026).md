*pogoda.php*
```php
<?php
$conn=mysqli_connect('localhost','root','','prognoza');
$sql="SELECT * FROM pogoda WHERE miasta_id=1 ORDER BY data_prognozy ASC;";
$query=mysqli_query($conn,$sql);
echo "<table>";
echo "<tr>";
echo "<th>Data</th>";
echo "<th>Temperatura w nocy</th>";
echo "<th>Temperatura w dzień</th>";
echo "<th>Opady [mm/h]</th>";
echo "<th>Ciśnienie [hPa]</th>";
echo "</tr>";
while ($array=mysqli_fetch_array($query)) {
    echo "<tr>";
    echo "<td>".$array[2]."</td>";
    echo "<td>".$array[3]."</td>";
    echo "<td>".$array[4]."</td>";
    echo "<td>".$array[5]."</td>";
    echo "<td>".$array[6]."</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    
</body>
</html>
```

*styl.css*
```css
table {
    border: 1px solid blue;
    width: 100%;
}
td {
    border: 1px solid blue;
}
th {
    border: 1px solid blue;
    background-color: blue;
    color: white;
    text-transform: uppercase;
}
```