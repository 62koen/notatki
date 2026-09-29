<?php
// Sprawdzenie, czy parametry zostały przesłane w adresie URL

    
    $imie = $_GET['imie'];
    $nazwisko = $_GET['nazwisko'];
    
    // Wyświetlenie odebranych danych
    echo "<h1>Dane wybranej osoby:</h1>";
    echo "<p><strong>Imię:</strong> $imie</p>";
    echo "<p><strong>Nazwisko:</strong> $nazwisko</p>";
    

?>
