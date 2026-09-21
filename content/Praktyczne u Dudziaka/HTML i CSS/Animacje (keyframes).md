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
    <div class="block"></div>
    <style>
        .block {
            width: 100px;
            height: 100px;
            background-color: orange;
            position: absolute;
            left: 250px;
            top: 120px;
            
            /* odtąd jest animacja */
            animation-iteration-count: infinite;
            animation-name: moveBlock;
            animation-duration: 5s;
        }
        
            @keyframes moveBlock {
        0% {
            transform: translate(0,0);
        }
        25% {
            transform: translate(200px,0px);
            opacity: 0.5;
        }
        50% {
            transform: translate(200px,200px);
            opacity: 1;
        }
        75% {
            transform: translate(0px,200px);
            opacity: 0.5;
        }
        100% {
            transform: translate(0,0);
            opacity: 1;
        }
    }
    </style>
</body>
</html>
```