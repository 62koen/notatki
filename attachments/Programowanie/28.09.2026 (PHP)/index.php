<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="get">
        <select id="wybor" name="wybor">
            <?php
            $conn=mysqli_connect('localhost','root','','matura');
            $sqlNazw="SELECT nazwisko FROM maturzysta";
            $query=mysqli_query($conn,$sqlNazw);
            while ($linia=mysqli_fetch_array($query)) {
                echo "<option>$linia[0]</option>";
            }
            ?>
        </select>
        <input type="submit" value="Wyślij">
    </form><br>
    <?php
    $wybor=$_GET['wybor'];
    if (isset($wybor)) {
        $sqlId="SELECT id FROM maturzysta WHERE nazwisko='$wybor'";
        $query=mysqli_query($conn,$sqlId);
        $linia=mysqli_fetch_array($query);
        echo "id ".$wybor.": ".$linia[0];
    }
    ?>
</body>
</html>