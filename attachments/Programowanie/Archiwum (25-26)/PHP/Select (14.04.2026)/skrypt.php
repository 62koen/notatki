<?php
if (isset($_POST['Wyślij'])) {
    $nazwisko=trim($_POST['nazw']); // "trim usuwa zbędne spacje" ~ Dudi
    $jezyki=trim($_POST['języki']);
    if (empty($nazwisko)) {
        echo "Proszę uzupełnić nazwisko";
    }
    elseif (empty($jezyki)) {
        echo "<p>$nazwisko nie zna żadnego języka.</p>";
    }
    else {
        echo "<p>$nazwisko zna: $jezyki</p>";
    }
}
?>