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
        <h2>Galeria</h2>
        <section>
            <?php
            $sql="SELECT idObiekt, plik, nazwa FROM obiekty WHERE panstwo='Islandia';";
            $query=mysqli_query($conn,$sql);
            while($linia=mysqli_fetch_array($query)) {
                echo "<a href='obiekty.php'><img src='$linia[1]' alt='$linia[2]' title='$linia[2]' class='miniatury'></a>";
            }
            mysqli_close($conn);
            ?>
        </section>
    </main>
    <footer>

    </footer>
</body>
</html>