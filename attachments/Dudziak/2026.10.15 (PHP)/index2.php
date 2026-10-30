<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <title>Zdrowy bazarek</title>
    <link rel="stylesheet" href="styl.css">
</head>

<body>
    <header>
        <h1>Zdrowy bazarek</h1>
    </header>
    <nav>
        <?php
        $connect = mysqli_connect("localhost", "root", "", "bazar");
        $query1 = "SELECT nazwa, plik FROM towar LIMIT 10;";
        $result = mysqli_query($connect, $query1);
        while ($row = mysqli_fetch_array($result)) {
            echo "<img src='img/{$row['plik']}' alt='{$row['nazwa']}'>";
        }
        ?>
    </nav>
    <main>
        <aside>
            <img src="img/market.png" alt="bazarek">
        </aside>
        <section>
            <p>Wybierz owoc lub warzywo i podaj jego wagę:</p>
            <form action="index.php" method="POST">
                <select name="towar">
                    <?php
                    $query2 = "SELECT id, nazwa FROM towar;";
                    $result = mysqli_query($connect, $query2);
                    while ($row = mysqli_fetch_array($result)) {
                        echo "<option value='{$row['id']}'>{$row['nazwa']}</option>";
                    }
                    ?>
                </select>
                <input type="number" step="1" name="waga">
                <button name="submit">Zamów</button>
            </form>
            <?php
            if(isset($_POST['waga'])) {
                $towar = $_POST['towar'];
                $waga = $_POST['waga'];
                $sql = "SELECT rodzaj, nazwa, cena FROM towar WHERE id=$towar;";
                $query = mysqli_query($connect,$sql);
                $tabela = mysqli_fetch_array($query);
                $cena = $tabela[2];
                $wartosc = $cena*$waga;
                echo "<p>$tabela[0] $tabela[1] wartość: $wartosc zł</p>";
                $sql = "INSERT INTO zamowienie VALUES (NULL, $towar, 4, $waga);";
                $query = mysqli_query($connect, $sql);
            }
            ?>
        </section>
    </main>
    <footer>
        <p>Stronę opracował: Autor</p>
    </footer>
    <?php mysqli_close($connect); ?>
</body>

</html>