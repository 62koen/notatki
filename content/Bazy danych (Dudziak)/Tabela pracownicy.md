[*Baza firma z tą tabelą*]()
### 1. Kwerenda wyszukująca wszystkie wiersze dla których placa jest większa od średniej placy. Należy użyć podzapytania.
```sql
SELECT * FROM pracownicy WHERE placa > (SELECT AVG(placa) FROM pracownicy); 
```
### 2. Kwerenda dodająca kolumnę o nazwie *staz* z typem danych liczby całkowite do tabeli pracownicy
```sql
ALTER TABLE pracownicy ADD staz int;
```
### 3. Kwerenda wyświetlająca wiersze tabeli pracownicy z nazwiskami, które nie powtarzają się
```sql
SELECT DISTINCT nazwisko FROM pracownicy;
```
### 4. Kwerenda wyświetlająca wiersz z imieniem Krzysztof oraz z id równym 9
```sql
SELECT * FROM `pracownicy` WHERE imie="Krzysztof" AND id=9; 
```
### 4a. Kwerenda wyświetlająca imiona Krzysztof i Andrzej
```sql
SELECT * FROM `pracownicy` WHERE imie="Krzysztof" OR imie="Andrzej";
```
### 5. Kwerenda wyświetlająca tabelę pracownicy posortowaną rosnąco według kolumny nazwisko
```sql
SELECT * FROM `pracownicy` ORDER BY nazwisko ASC; 
```
### 6. Kwerenda wyświetlająca wiersze ze stanowiskami sprzedawca i magazynier
```sql
SELECT stanowisko FROM `pracownicy` WHERE stanowisko="sprzedawca" OR stanowisko="magazynier";
```
### 7. Kwerenda wyświetlająca wszystkie wiersze tabeli pracownicy, ale tylko z kolumnami nazwisko i stanowisko
```sql
SELECT nazwisko, stanowisko FROM `pracownicy`;
```
### 8. Kwerenda usuwająca kolumnę staz z tabeli pracownicy.
```sql
ALTER TABLE pracownicy DROP staz;
```
### Dodatek 1. Grupowanie po stanowisku i wyświetlenie ich średniej płacy
```sql
SELECT stanowisko, avg(placa) AS srednia_placa FROM `pracownicy` GROUP BY stanowisko;
```