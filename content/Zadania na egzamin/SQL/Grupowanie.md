## Schemat
```sql
SELECT (grupowana kolumna), (funkcja agregująca) AS (nazwa grupowania) FROM (tabela) GROUP BY (grupowana kolumna);
```
# [Baza biblioteka](https://github.com/62koen/notatki/blob/v4/attachments/SQL/biblioteka.sql)
## 1. Policz liczbę książek wydanych w poszczególnych latach w tabeli "ksiazka"
Liczymy liczbę książek według roku wydania (każdy rok osobno)
```sql
SELECT rokwydania, COUNT(*) AS 'Liczba książek' FROM ksiazka GROUP BY rokwydania;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/1.png)
## 2. Policz liczbę książek z tego samego wydawnictwa i posortuj wyniki malejąco
```sql
SELECT wydawnictwo, COUNT(*) AS liczba_ksiazek FROM ksiazka GROUP BY wydawnictwo ORDER BY liczba_ksiazek DESC;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/2.png)
## 3. Zadanie 2, ale jedynie z liczbą książek >= 2
```sql
SELECT wydawnictwo, COUNT(*) AS liczba_ksiazek FROM ksiazka GROUP BY wydawnictwo HAVING liczba_ksiazek>=2;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/3.png)
# [Baza workers](https://github.com/62koen/notatki/blob/v4/attachments/SQL/workers.sql)
## 4. Znajdź średnią płacę dla wszystkich stanowisk z tabeli *pracownicy*
```sql
SELECT stanowisko, AVG(placa) AS sr_placa FROM `pracownicy` GROUP BY stanowisko;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/4.png)
## 5. Znajdź ilość pracowników dla poszczególnych stanowisk z tabeli *pracownicy*
```sql
SELECT stanowisko, COUNT(*) AS ilosc_pracownikow FROM `pracownicy` GROUP BY stanowisko;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/5.png)
## 6. Znajdź ilość pracowników dla poszczególnych stanowisk, gdy liczba pracowników wynosi co najmniej 2
```sql
SELECT stanowisko, COUNT(*) AS ilosc_pracownikow FROM `pracownicy` GROUP BY stanowisko HAVING ilosc_pracownikow>=2;
```
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zdj/Grupowanie/6.png)