```c++
#include <iostream>

using namespace std;

int main()
{
    setlocale(LC_CTYPE,"Polish");
    int i, s;
    i=1; // liczby od 1
    s=0; // zerujemy sumę - inaczej dostaniemy losową liczbę
    while(i<=100) { // dla i mniejszego lub równego 100 (inaczej od 1 do 100)
        s=s+i; // suma z dodawaniem za każdym powtórzeniem pętli
        i++; // powtórzenie pętli
    }
    cout << "Suma liczb od 1 do 100 wynosi: " << s;
}
```