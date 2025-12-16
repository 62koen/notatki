```c++
#include <iostream>

using namespace std;

int main()
{
    int liczba, losowa = 83;
    cout << "Sprobuj odgadnac losowo wpisana liczbe: ";
    cin >> liczba;
    while (liczba != losowa)
    {

        if (liczba < losowa)
            cout << "Liczba jest za mala. ";
        else
            cout << "Liczba jest za duza. ";
        cout << "Sprobuj jeszcze raz: ";
        cin >> liczba;
    }
    cout << "Odgadles liczbe. Jest to liczba: " << liczba << endl;
    return 0;
}
```