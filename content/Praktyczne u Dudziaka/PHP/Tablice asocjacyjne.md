*index.php*
```php
<?php
$article = [ // zdefiniowanie tabeli asocjacyjnej
    'id' => 1,
    'title' => 'Wprowadzenie do Angular 2',
    'author' => 'Eduweb'
];
print_r($article);
print('<br>');
echo "trzeci element: {$article['author']}"; // tablice asocjacyjne należy wkładać w klamry
print('<br>');
// echo "trzeci element: $article[author]";

$article['category'] = 'Webdevelop'; // dołożenie wartości do tabeli
$article['views'] = 2450;
print_r($article);
print('<br>');

print('<br>');
foreach ($article as $klucz => $wartosc) { // tablica article rozdzielona na klucze i wartości
    print($klucz.', '.$wartosc.'<br />');
}
?>
```