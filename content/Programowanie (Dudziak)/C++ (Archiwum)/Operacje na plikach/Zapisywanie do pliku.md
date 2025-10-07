```c++
#include <iostream>
#include <fstream>

using namespace std;
string imie, zodiak;

int main()
{
    setlocale(LC_CTYPE,"Polish");
    cout << "Podaj imie: ";
    cin >> imie;
    cout << "Podaj znak zodiaku: ";
    cin >> zodiak;
    // zmienna plikowa
    fstream plik;
    // otwarcie pliku do zapisu
    plik.open("./dane.txt",ios::out | ios::app); // plik może być zapisany (out) i można do niego dopisywać (app)
    // zapisanie imienia do pliku
    plik << imie << endl; // zamiast cin
    //zapisanie znaku zodiaku do pliku
    plik << zodiak << endl;
    // zamknięcie pliku
    plik.close();
}
```