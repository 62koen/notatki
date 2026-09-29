<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konfigurator samochodów</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Serwis konfiguracji samochodów</h1>
    </header>
    <nav>
        <h2>Samochody</h2>
        <h2>Konfigurator</h2>
        <h2>Kontakt</h2>
    </nav>
    <main>
        <section id="left">
            <table>
            <?php
                $connect=mysqli_connect('localhost','root','','samochody');
                $sql="SELECT marka, model, cena, nazwa, doplata FROM pojazdy, kolory WHERE model='alfa' AND kolory.id=pojazdy.kolor;";
                $query=mysqli_query($connect,$sql);
                $tabela1=mysqli_fetch_array($query);
                while ($tabela1=mysqli_fetch_array($query)) {
                    $fullPrice=$tabela1[2]+$tabela1[4];
                    echo "<tr>";
                    echo "<td>$tabela1[0]</td>";
                    echo "<td>$tabela1[1]</td>";
                    echo "<td>$tabela1[3]</td>";
                    echo "<td>$fullPrice</td>";
                    echo "</tr>";
                }
                mysqli_close($connect);
            ?>
            </table>
        </section>
        <section id="middle">
            <table>
                <tr>
                    <th colspan="2">Konfiguracja</th>
                    <th>Cena</th>
                </tr>
                <tr>
                    <td colspan="3"><img src="a1.jpg" alt="Konfiguracja 1"></td>
                </tr>
                <?php
                    $connect=mysqli_connect('localhost','root','','samochody');
                    $sql="SELECT marka, model, cena FROM pojazdy ORDER BY RAND() LIMIT 2;";
                    $query=mysqli_query($connect,$sql);
                    $tabela2=mysqli_fetch_array($query);
                    echo "<tr>";
                    echo "<td>Marka</td>";
                    echo "<td>$tabela2[0]</td>";
                    echo "<td rowspan='2'>$tabela2[2]</td>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>Model</td>";
                    echo "<td>$tabela2[1]</td>";
                    mysqli_close($connect);
                ?>
                <tr>
                    <td colspan="3"><img src="a2.jpg" alt="Konfiguracja 2"></td>
                </tr>
                <?php
                    $connect=mysqli_connect('localhost','root','','samochody');
                    $sql="SELECT marka, model, cena FROM pojazdy ORDER BY RAND() LIMIT 2;";
                    $query=mysqli_query($connect,$sql);
                    $tabela2=mysqli_fetch_array($query);
                    echo "<tr>";
                    echo "<td>Marka</td>";
                    echo "<td>$tabela2[0]</td>";
                    echo "<td rowspan='2'>$tabela2[2]</td>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>Model</td>";
                    echo "<td>$tabela2[1]</td>";
                    mysqli_close($connect);
                ?>
            </table>
        </section>
        <section id="right">
            <h3>111 222 444</h3>
            <img src="a3.png" alt="Samochód">
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>

<?php
$connect=mysqli_connect('localhost','root','','samochody');
$sql="SELECT marka, model, cena, nazwa, doplata FROM pojazdy, kolory WHERE model='alfa' AND kolory.id=pojazdy.kolor;";
$query=mysqli_query($connect,$sql);
$tabela1=mysqli_fetch_array($query);
$tabela1[2]=$tabela1[2]+$tabela1[4];

?>