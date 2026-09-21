<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Islandia</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1><a href="islandia.php">Zwiedzaj Islandię</a></h1>
    </header>
    <aside>
        <h3>Do zwiedzania</h3>
        <ul>
            <li>Wodospady:</li>
            <ol>
                <?php
                $conn=mysqli_connect('localhost','root','','islandia');
                $sql="SELECT nazwa FROM obiekty WHERE panstwo='Islandia' AND idRodzaj=10;";
                $query=mysqli_query($conn,$sql);
                while($linia=mysqli_fetch_array($query)) {
                    echo "<li>".$linia[0]."</li>";
                }
                ?>
            </ol>
            <li>Siedliska zwierząt:</li>
            <ol>
                <?php
                $sql="SELECT nazwa FROM obiekty WHERE panstwo='Islandia' AND idRodzaj=14;";
                $query=mysqli_query($conn,$sql);
                while($linia=mysqli_fetch_array($query)) {
                    echo "<li>".$linia[0]."</li>";
                }
                ?>
            </ol>
        </ul>
    </aside>
    <main>
        <h2>Opis miejsca</h2>
        <section>
            <?php
            $sql="SELECT plik, nazwa, nazwaCechy, wartoscCechy, opis, rodzaj FROM obiekty JOIN rodzaje ON rodzaje.idRodzaj=obiekty.idRodzaj WHERE idObiekt=46;";
            $query=mysqli_query($conn,$sql);
            $linia=mysqli_fetch_array($query);
            echo "<img src='$linia[0]' alt='$linia[1]'>";
            echo "<h2>$linia[1]</h2>";
            echo "<h3>$linia[5]</h3>";
            echo "<p>$linia[2]: $linia[3]</p>";
            echo "<p>$linia[4]</p>";
            mysqli_close($conn);
            ?>
        </section>
    </main>
    <footer>

    </footer>
</body>
</html>