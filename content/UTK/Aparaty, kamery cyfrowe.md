## Technologia CCD
CCD oznacza tzw. układ ze sprzężeniem ładunkowym, przy pomocy którego do uzyskiwania
fotografii wykorzystuje się wyłącznie prąd. Matryca zawiera miliony mikroskopijnych
światłoczułych płytek, rejestrujących światło. Generuje tym samym ładunki, które po
zakończeniu ekspozycji zostają odczytane. Aby stwierdzić, jak dużo fotonów padło na komórkę
fotodetektora, wystarczy zmierzyć wartość ładunku zgromadzonego na detektorze.
## Budowa matrycy
Matryca składa się z milionów elementów o następującej budowie:
- elementu światłoczułego, działającego na zasadzie fotodiody,
- wzmacniacza sygnału,
- przetwornika analogowo-cyfrowego,
- mikrosoczewki, której zadaniem jest skupienie światła na elemencie światłoczułym,
- filtru barwnego odpowiadającego za fakt, że piksel jest czuły tylko na pewne spektrum światła.
Najczęściej stosowana siatka filtrów Bayera.
## Tecnologia CMOS
Matryce CMOS działają na podobnych zasadach jak opisane poniżej matryce CCD z tą różnicą,
że komórki rzędów CMOS są adresowane i odczytywane indywidualnie (dzięki zastosowaniu
pionowego i poziomego rejestru odczytującego). Każdy element matrycy CMOS zapisuje obraz
oddzielnie, ponieważ układy CMOS tworzą niezależną macierz, z której odczytuje się bez
problemu wartości natężenia światła z dowolnej komórki, a pomiar może być przeprowadzany
wielokrotnie bez utraty zgromadzonej tam informacji. Wystarczy podać współrzędne danego
elementu, żeby dotrzeć do uzyskanych danych.

Matryca CMOS (Complementary Metal Oxide Semiconductor) to układ wielu elementów
światłoczułych wykonany w technologii CMOS. Matryce CMOS występują w wielu
urządzeniach, takich jak kamery internetowe, kompaktowe aparaty cyfrowe, lustrzanki cyfrowe
(ang. DSLR – Digital Single Lens Reflex Camera) oraz elementy kontrolne w automatyzacji
produkcji i innych miejscach.
Matryce CMOS można spotkać w aparatach różnych klas – od najprostszych do najbardziej
zaawansowanych. Znajdują one zastosowanie we wszystkich modelach lustrzanek cyfrowych
firmy Canon (seria EOS). Od 2006 roku matryce tego typu są wykorzystywane w aparatach
DSLR także przez firmę Nikon, a od 2008 roku przez firmę Pentax (model K20D).


Odczytywanie polega na tym, że cały obszar przeznaczony do rejestracji obrazu jest
przeszukiwany w sposób szeregowy, tj. poszczególne linie (szeregi) przylegających do siebie
czujników przekazują zarejestrowane dane. Na rejestrator czujnika obrazu podawane zostają
ładunki z pierwszego rzędu elementów matrycy. Po przeczytaniu ładunków z pierwszego rzędu,
rejestrator usuwa je, dając miejsce dla rzędu drugiego. Ładunki w elementach czujnika są ze
sobą w taki sposób „sprzężone”, że przesunięcie pierwszego rzędu powoduje „pociągnięcie” za
sobą rzędu drugiego, który z kolei pociąga rząd trzeci itd. W ten sposób wszystkie rzędy zostają
kolejno odczytane w rejestratorze.

**1. Szybkość zapisu danych**
- CCD: Wolny zapis danych
- CMOS: Szybki zapis danych
**2. Szumy**
- CCD: Mniejsze szumy
- CMOS: Większe szumy
**3. Pobór mocy i żywotność baterii**
- CCD: Większy pobór mocy (krótsza żywotność baterii)
- CMOS: Mniejszy pobór mocy (dłuższa żywotność baterii)
**4. Współczynnik wypełnienia i obwody elektryczne**
- CCD: Większy współczynnik wypełnienia (mniej obwodów elektrycznych zasłaniających światło dostające się do fotoelementów)
- CMOS: Mniejszy współczynnik wypełnienia (więcej obwodów elektrycznych zasłaniających światło dostające się do fotoelementów)

## Aparaty kompaktowe
W aparacie kompaktowym obiektyw i lampa błyskowa są wbudowane na stałe. Aparaty te mają
funkcje zdjęciowe, które są porównywalne z aparatami lustrzanymi. Różnice między aparatami
kompaktowymi a ich lustrzanymi odpowiednikami dotyczą rodzaju obiektywu, wielkości matrycy
rejestrującej oraz ilości funkcji fotograficznych i edycyjnych. Domyślnie aparaty cyfrowe
kompaktowe pracują w trybie pełnej automatyki procesu rejestracji obrazu.
Osoba, która zupełnie nie zna się na fotografii, jest w stanie zrobić dobre zdjęcie. W momencie
naciśnięcia spustu migawki, aparat kompaktowy wykonuje pomiar światła i odległości.
Następnie na podstawie wyników pomiarów

## Aparaty lustrzane (lustrzanki)
Nazwa lustrzanka pochodzi od zamontowanego wewnątrz aparatu lustra, które rzuca obraz
„wyłapywany” przez obiektyw na matówkę. Jedną z ważnych cech lustrzanek jest możliwość
stosowania wymiennych obiektywów oraz akcesoriów do jednego korpusu. Lustrzanki są
większe, cięższe i droższe niż aparaty kompaktowe. Są jednakże bardziej uniwersalne i mają
więcej możliwości rejestracji zdjęć. Obraz w wyższej klasie lustrzanek pochodzi z obiektywu i
jest niemal identyczny z rejestrowanym zdjęciem, ponieważ wizjer połączony jest optycznie z
obiektywem. Tak więc można obserwować na bieżąco ostrość, z jaką wykonywane jest zdjęcie.

## Podsumowanie
- **Technologia CMOS** : Matryca CMOS zawiera światłoczułe elementy, które są odczytywane indywidualnie, co pozwala na szybki dostęp do danych. Jest efektywna energetycznie i mniej podatna na zakłócenia. Stosowana w aparatach cyfrowych, kamerach internetowych i lustrzankach cyfrowych.
- **Budowa matrycy CMOS**: Składa się z fotodiod, wzmacniaczy, przetworników
analogowo-cyfrowych, mikrosoczewek i filtrów barwnych (np. Bayer).
- **Technologia CCD** : Matryca CCD rejestruje światło, generując ładunki, które są przesyłane do odczytu. Zapewnia wysoką jakość obrazu, ale jest mniej efektywna energetycznie niż CMOS. Stosowana w profesjonalnych aparatach i teleskopach.
- **Odczyt danych w technologii CCD** : Odczyt polega na przesuwaniu ładunków z kolejnych rzędów elementów matrycy, gdzie każdy rząd przesuwa się, „pociągając” za sobą następny, aż cały obszar obrazu zostanie odczytany.

**Porównanie CCD i CMOS** :
1. **Szybkość zapisu danych** :
    ○ CCD: Wolny zapis
    ○ CMOS: Szybki zapis
2. **Szumy** :
    ○ CCD: Mniejsze szumy
    ○ CMOS: Większe szumy
3. **Pobór mocy i żywotność baterii** :
    ○ CCD: Większy pobór mocy (krótsza żywotność baterii)
    ○ CMOS: Mniejszy pobór mocy (dłuższa żywotność baterii)
4. **Współczynnik wypełnienia i obwody elektryczne** :
    ○ CCD: Większy współczynnik wypełnienia (mniej obwodów zasłaniających
       światło)
    ○ CMOS: Mniejszy współczynnik wypełnienia (więcej obwodów zasłaniających
       światło)
**Aparaty kompaktowe** : Mają wbudowany obiektyw i lampę błyskową, oferują automatyczne
ustawienia, co ułatwia robienie dobrych zdjęć bez znajomości fotografii. Różnią się od
lustrzanek mniejszą matrycą i ograniczoną liczbą funkcji.
**Aparaty lustrzane (lustrzanki)** : Posiadają lustro, które odbija obraz z obiektywu, umożliwiając
podgląd przez wizjer. Są większe, cięższe i droższe, ale oferują możliwość wymiany obiektywów
i większą kontrolę nad zdjęciem.