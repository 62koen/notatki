*index.php*
```php
<?php 
$tab1=[19,"tekst1",-4,"abc"];
echo "$tab1[2]= ", $tab1[2];
$tab1[4]=1100;

$x=7;
echo"$x"; // w apostrofach mamy tekst, w cudzysłowie wartość
echo'$x';

print_r($tab1);

$tabif=$tab1[2];

if($tabif>0)
{
    echo("$tabif jest większe od zera");
}

elseif($tabif==0)
{
    echo("$tabif jest równe zero");
}

else
{
    echo("$tabif jest mniejsze od zera");
}
?>
```