*Załączniki są na dole strony*

---
## Zapytanie 1: wybierające jedynie id, imię i nazwisko maturzystów ze szkoły „T3”, posortowane rosnąco według nazwiska
```sql
SELECT id, imie, nazwisko FROM maturzysta WHERE szkola="T3" ORDER BY nazwisko ASC;
```
## Zapytanie 2: wybierające jedynie nazwy przedmiotów maturalnych z tabeli arkusz. Nazwy przedmiotów nie mogą się powtarzać
```sql
SELECT DISTINCT przedmiot FROM arkusz;
```
## Zapytanie 3: wybierające jedynie rok dla najstarszego i najmłodszego arkusza maturalnego
```sql
SELECT MIN(rok) AS "Najmłodszy", MAX(rok) AS "Najstarszy" FROM arkusz;
```
## Zapytanie 4: wybierające jedynie id maturzysty oraz średnią ze wszystkich punktów otrzymanych przez tego maturzystę. Średnia punktów ma nazwę kolumny (alias) „Wynik”. Dane należy posortować malejąco według obliczonej średniej i wyświetlić tylko 1 rekord. (Zapytanie grupujące, które wybiera maturzystę z najlepszym średnim wynikiem punktów)
```sql
SELECT maturzysta_id, AVG(punkty) AS 'Wynik' FROM wynik GROUP BY maturzysta_id ORDER BY `Wynik` DESC LIMIT 1;
```
## Zapytanie 5: wybierające jedynie rok, sesję i przedmiot z tabeli arkusz oraz odpowiadające temu punkty z tabeli wynik dla id maturzysty 31. Należy posłużyć się relacją
```sql
SELECT rok, sesja, przedmiot, punkty FROM arkusz, wynik WHERE arkusz.symbol=wynik.symbol AND id=31;
```