const galeria = document.getElementById("galeria");
const newImg = document.createElement("img");
galeria.appendChild(newImg);
newImg.src = "brak.jpg";

function zmiana(x) {
    if(x==1) {
        newImg.src = "auto1.jpg";
    }
    else if(x==2) {
        newImg.src = "auto2.jpg";
    }
    else if(x==3) {
        newImg.src = "auto3.jpg";
    }
}