[[Podpinanie zewnętrznego pliku JS do HTML]]
*script.js*
```js
// wyświetlanie liczb parzystych od 1 do 100
var i;
for(i=1; i<=100; i++) // i++ <=> i+1
{
    if(i%2==0) // % - reszta z dzielenia
        // console.log(i);
        document.write(i,"<br>");
}

// sumowanie liczb od 1 do 10
suma=0;
for(i=1; i<=10; i++)
{
    suma=suma+i;
}
document.write("Suma liczb: "+suma,"<br>");

// połowa choinki
var j;
for(i=1; i<=15; i++)
{
    for(j=1; j<=i; j++)
        document.write("*");
    document.write("<br>");
}
```