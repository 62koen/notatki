```c++
#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    setlocale(LC_CTYPE,"Polish");
    fstream plik;
    plik.open("./dane.txt",ios::in);
        if(plik.good()==false)
            cout << "Nie udalo sie otworzyc pliku";
        else
        {
            string wiersz;
            while(getline(plik,wiersz)) // pętla while do odczytu pliku
                cout << wiersz << endl;
        }
        plik.close();
}
```