[Zdjęcie do zadania](https://github.com/62koen/notatki/blob/v4/attachments/HTML/Tabelki/zadanie-tabelki-niesymetryczne.jpg)
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border="2" width="200px" height="200px">
        <tr>
            <td colspan="2">(1,1)</td>
        </tr>
        <tr>
            <td rowspan="2">(2,1)</td>
            <td>(2,2)</td>
        </tr>
        <tr>
            <td>(3,2)</td>
        </tr>
    </table>
    <table border="2" width="200px" height="200px">
        <tr>
            <td rowspan="3">(1,1)</td>
            <td>(1,2)</td>
            <td>(1,3)</td>
        </tr>
        <tr>
            <td colspan="3">(2,2)</td>
        </tr>
    </table>
    <style>
        table {
            margin: 20px;
            text-align: center;
        }
    </style>
</body>
</html>
```