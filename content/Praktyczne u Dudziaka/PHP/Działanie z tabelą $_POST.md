HTML:
```html
<form method="POST" action="http://localhost/dodanie.php">
<input name="na">
```
PHP:
```php
$nazwisko = $_POST['na'];
// tutaj połączenie z bazą danych
$zapyt="INSERT INTO tab1 VALUES ('$nazwisko');";
```