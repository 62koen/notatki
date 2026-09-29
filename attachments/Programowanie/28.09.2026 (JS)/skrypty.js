function licznik() {
    if(localStorage.getItem('views')) {
        let count = parseInt(localStorage.getItem('views'))+1;
        localStorage.setItem('views', count);
    }
    else {
        localStorage.setItem('views', 1);
    }
    let number = localStorage.getItem('views');
    let par = document.getElementById('licznikWejsc');
    if (par) {
        par.innerHTML = "Liczba wejść na stronę: "+number;
    }
}