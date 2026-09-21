*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <script src="script1.js"></script> <!-- link do zewnętrznego pliku JS -->
    <br>
    <script src="script2.js"></script>
</body>
</html>
```

*script1.js*
```js
var a=20;
var b=2;
switch(a*b) { // w nawiasie określamy jakie jest zadanie
    case 10: // "w przypadku wyniku 10"
        document.write("Wynik mnożenia wynosi 10.");
        break; // przerwanie polecenia; inaczej będzie szło w nieskończoność
    case 40:
        document.write("Wynik mnożenia wynosi 40.");
        break;
    case 100:
        document.write("Wynik mnożenia wynosi 100.");
        break;
    default: // swoiste "else"
        document.write("Nieznany wynik mnożenia.");
}
```

*script2.js*
```js
var x=Number(prompt("Podaj dzień tygodnia (1-7): "))
switch(x) {
    case 1:
        document.write("To poniedziałek.");
        break;
    case 2:
        document.write("To wtorek.");
        break;
    case 3:
        document.write("To środa.");
        break;
    case 4:
        document.write("To czwartek.");
        break;
    case 5:
        document.write("To piątek.");
        break;
    case 6:
        document.write("To sobota.");
        break;
    case 7:
        document.write("To niedziela.");
        break;
    default:
        document.write("Została podana inna liczba.");
}
```