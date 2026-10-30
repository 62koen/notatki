<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zdrowy bazarek</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Zdrowy bazarek</h1>
    </header>
    <nav>
        <?php
        $conn=mysqli_connect('localhost','root','','bazar');
        $sql="SELECT nazwa, plik FROM towar LIMIT 10;";
        $query=mysqli_query($conn,$sql);
        while($linia=mysqli_fetch_array($query)) {
            echo "<img src='pliki/$linia[1]' alt='$linia[0]'>";
        }
        ?>
    </nav>
    <main>
        <aside>
            <img src="pliki/market.png" alt="bazarek" id="market">
        </aside>
        <section>
            <p>Wybierz owoc lub warzywo i podaj jego wagę:</p>
            <form method="post">
                <select>
                    <?php
                    $sql="SELECT id, nazwa FROM towar;";
                    $query=mysqli_query($conn,$sql);
                    while($linia=mysqli_fetch_array($query)) {
                        echo "<option value='$linia[0]'>$linia[1]</option>";
                    }
                    mysqli_close($conn);
                    ?>
                </select>
                <input type="number" name="waga">
                <button>Zamów</button>
            </form>
        </section>
    </main>
    <footer>
        <p>Stronę opracował: 00000000000</p>
    </footer>
</body>
</html>