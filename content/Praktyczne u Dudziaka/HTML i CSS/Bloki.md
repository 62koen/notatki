[PDF](https://github.com/62koen/notatki/blob/v4/attachments/Programowanie%20webowe/zad-struktura-flexbox.pdf)

*index.html*
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <header>header</header>
    <div id="img">obrazy</div>
    <main>
        <section id="left">left</section>
        <nav>nav</nav>
        <section id="right">right</section>
    </main>
    <footer>footer</footer>
</body>
</html>
```
*style.css*
```css
* {
    font-family: 'Century Gothic', Arial;
}
body {
    background-color: blanchedalmond;
}
main {
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    height: 420px;
}
header, footer, #img {
    background-color: sienna;
    padding: 5px;
    color: white;
    font-size: 130%;
    height: 50px;
    text-align: center;
}
#left {
    /* margin: 10px; */
    /* padding: 20px; */
    width: 35%;
    height: 400px;
    background-color: navajowhite;
    flex-basis: 100%;
}
#right {
    width: 65%;
    height: 420px;
    flex-basis: 50%;
}
nav {
    width: 65%;
    height: 50px;
    flex-basis: 50%;
}
header {
    height: 100px;
}
```
## Wygląd końcowy
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/Programowanie%20webowe/Flexbox/flex-bloki.png)