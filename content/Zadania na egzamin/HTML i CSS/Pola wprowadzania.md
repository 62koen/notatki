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
    <label for="country">Kraj</label>
    <select id="country" multiple>
        <option value="pl">Polska</option>
        <option value="es">Hiszpania</option>
        <option value="de">Niemcy</option>
    </select>

    <label for="date">Data</label>
    <input type="date">

    <label for="time">Czas</label>
    <input type="time">
    <hr>
    <label for="checkbox">Regulamin</label>
    <input type="checkbox" checked>
    <input type="checkbox">
    <hr> <!-- można zaznaczyć jedno - te same nazwy -->
    <input type="radio" id="cat" name="animal">
    <input type="radio" id="dog" name="animal">
    <hr> <!-- można zaznaczyć oba - inne nazwy -->
    <input type="radio" id="tiger" name="animal">
    <input type="radio" id="grzyb" name="nieanimal">
</body>
</html>
```