<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sprzedaż artykułów</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Najlepsze antyki w mieście</h1>
    </header>
    <main>
        <section>
            <h2>- Sofy -</h2>
            <?php
            $conn=mysqli_connect('localhost','root','','antyki');
            $sql="SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria=1;";
            $query=mysqli_query($conn,$sql);
            echo "<div class='mebel'>";
            while($tabela=mysqli_fetch_array($query)) {
                echo "<div class='obraz'><img src='sofy/$tabela[2]' alt='mebel'></div>";
                echo "<div>";
                echo "<h3>$tabela[1]</h3>";
                echo "<h4>styl $tabela[3]</h4>";
                echo "<h3>CENA: $tabela[4] zł</h3>";
                echo "<form method='post'><button name='guzik' value='$tabela[0]'>KUP</button></form>";
                echo "</div>";
                echo "<div class='opis'>$tabela[5]</div><br>";
            }
            echo "</div>";
            ?>
            <h2>- Fotele -</h2>
            <?php
            $sql="SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria=2;";
            $query=mysqli_query($conn,$sql);
            echo "<div class='mebel'>";
            while($tabela=mysqli_fetch_array($query)) {
                echo "<div class='obraz'><img src='fotele/$tabela[2]' alt='mebel'></div>";
                echo "<div>";
                echo "<h3>$tabela[1]</h3>";
                echo "<h4>styl $tabela[3]</h4>";
                echo "<h3>CENA: $tabela[4] zł</h3>";
                echo "<form method='post'><button name='guzik' value='$tabela[0]'>KUP</button></form>";
                echo "</div>";
                echo "<div class='opis'>$tabela[5]</div><br>";
            }
            echo "</div>";
            ?>
            <h2>- Komody -</h2>
            <?php
            $sql="SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria=3;";
            $query=mysqli_query($conn,$sql);
            echo "<div class='mebel'>";
            while($tabela=mysqli_fetch_array($query)) {
                echo "<div class='obraz'><img src='komody/$tabela[2]' alt='mebel'></div>";
                echo "<div>";
                echo "<h3>$tabela[1]</h3>";
                echo "<h4>styl $tabela[3]</h4>";
                echo "<h3>CENA: $tabela[4] zł</h3>";
                echo "<form method='post'><button name='guzik' value='$tabela[0]'>KUP</button></form>";
                echo "</div>";
                echo "<div class='opis'>$tabela[5]</div><br>";
            }
            echo "</div>";
            ?>
            <?php
            if(isset($_POST['guzik'])) {
                $kup=$_POST['guzik'];
                $sql="INSERT INTO zakupy VALUES (NULL, 1, $kup, 1);";
                $query=mysqli_query($conn,$sql);
            }
            ?>
        </section>
        <aside>
            <h2>Koszyk</h2>
            <p>Zalogowano: Anna Kowalska</p>
            <?php
            echo "<ol>";
            $sql="SELECT nazwa, cena FROM meble, zakupy, klienci WHERE meble.idMeble=zakupy.idMeble AND zakupy.idKlienci=klienci.idKlienci AND klienci.idKlienci=1;";
            $query=mysqli_query($conn,$sql);
            while($tabela=mysqli_fetch_array($query)) {
                echo "<li>$tabela[0], cena: $tabela[1] zł";
            }
            $sql="SELECT SUM(cena) FROM meble, zakupy, klienci WHERE meble.idMeble=zakupy.idMeble AND zakupy.idKlienci=klienci.idKlienci AND klienci.idKlienci=1;";
            $query=mysqli_query($conn,$sql);
            $tabela=mysqli_fetch_array($query);
            echo "<p>Koszt całkowity: $tabela[0] zł</p>";
            mysqli_close($conn);
            ?>
        </aside>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>