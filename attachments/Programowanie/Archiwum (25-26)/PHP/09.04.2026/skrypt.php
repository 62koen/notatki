<?php
if (isset($_POST['języki']) && isset($_POST['nazw'])) {
    echo $_POST['nazw']." wybrał ".$_POST['języki'];
}
else if (!isset($_POST['nazw'])) {
    echo "Nie wybrano imienia i nazwiska";
}
else {
    echo "Proszę wybrać język";
}
?>