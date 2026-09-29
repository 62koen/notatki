<?php
$conn = mysqli_connect("localhost", "root", "", "firma");


// Zapytanie 1
$sql = "SELECT nazwisko, imię FROM pracownicy"; 
$result = mysqli_query($conn, $sql);


    while($row = mysqli_fetch_array($result)) {
       
        $imie = $row['imię'];
        $nazwisko = $row['nazwisko'];
        
            
        // Link przekazuje parametry metodą GET
        echo "<a href='wynik.php?imie=$imie&nazwisko=$nazwisko'>";
        echo "$imie $nazwisko";
        echo "</a><br>";
    }

mysqli_close($conn);
?>