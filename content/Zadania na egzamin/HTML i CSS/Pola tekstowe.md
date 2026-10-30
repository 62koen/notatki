```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form>
        <!-- ręcznie label i input -->
        <label>
            Imię:
            <input type="text" placeholder="Wprowadź imię"> <!-- placeholder - wskazówka -->
        </label>
        <!-- najpierw label, potem przypisany mu input -->
        <label for="lastname">Nazwisko:</label>
        <input type="text" id="lastname">
        <!-- kliknięcie odświeża stronę -->
        <input type="submit" value="Zapisz zmiany">
        <!-- czyści pola bez odświeżania -->
        <input type="reset">
    </form>
    <!-- pozioma linia -->
    <hr>
    <!-- nowa linia -->
    <br>
    <form>
        <textarea cols="50" rows="20"></textarea>
        <!-- kliknięcie nie odświeża strony -->
        <br>
        <input type="button" value="Kliknij mnie (nic nie robię)">
        <input type="reset">
        <button>Zwykły baton (można dodać obrazek)</button>
    </form>
</body>
</html>
```