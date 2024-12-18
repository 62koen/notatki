```c++
#include <iostream>

using namespace std;

int main()
{
    setlocale(LC_CTYPE,"Polish");
    int x, s, p;
    s = 0;
    cout << "Podaj liczbę na którym kończy się przedział" << endl;
    cin >> p;
    for (x=1; x<=p; x++)
        s = s+x;
    cout << s;
}
```