## Schemat
```sql
SELECT (grupowana kolumna), (funkcja agregująca) AS (nazwa grupowania) FROM (tabela) GROUP BY (grupowana kolumna);
```
# [Baza biblioteka]
## 1. Policz liczbę książek wydanych w poszczególnych latach w tabeli "ksiazka"
Liczymy liczbę książek według roku wydania (każdy rok osobno)
```sql
SELECT rokwydania, COUNT(*) AS 'Liczba książek' FROM ksiazka GROUP BY rokwydania;
```
![](2025-03-27_15-24.png)
## 2. Policz liczbę książek z tego samego wydawnictwa i posortuj wyniki malejąco
```sql
SELECT wydawnictwo, COUNT(*) AS liczba_ksiazek FROM ksiazka GROUP BY wydawnictwo ORDER BY liczba_ksiazek DESC;
```
![](2025-03-27_15-23.png)
## 3. Zadanie 2, ale jedynie z liczbą książek >= 2
```sql
SELECT wydawnictwo, COUNT(*) AS liczba_ksiazek FROM ksiazka GROUP BY wydawnictwo HAVING liczba_ksiazek>=2;
```
![](2025-03-27_15-27.png)
# [Baza workers]
## 4. Znajdź średnią płacę dla wszystkich stanowisk z tabeli *pracownicy*
```sql
SELECT stanowisko, AVG(placa) AS sr_placa FROM `pracownicy` GROUP BY stanowisko;
```
![](2025-04-03_15-20.png)
## 5. Znajdź ilość pracowników dla poszczególnych stanowisk z tabeli *pracownicy*
```sql
SELECT stanowisko, COUNT(*) AS ilosc_pracownikow FROM `pracownicy` GROUP BY stanowisko;
```
![](2025-04-03_15-24.png)
## 6. Znajdź ilość pracowników dla poszczególnych stanowisk, gdy liczba pracowników wynosi co najmniej 2
```sql
SELECT stanowisko, COUNT(*) AS ilosc_pracownikow FROM `pracownicy` GROUP BY stanowisko HAVING ilosc_pracownikow>=2;
```
![](2025-04-03_15-28.png)