## [Baza biblioteka]()
AS - Etykieta tabelki z wynikiem

- Liczenie książek
```sql
SELECT COUNT(*) AS 'Liczba ksiazek' FROM ksiazki;
```

- Łączna suma za wypożyczenie
```sql
SELECT SUM(Cena_za_wyp) AS 'Razem' FROM ksiazki;
```

- Suma ceny książek zaokrąglona do dwóch miejsc po przecinku
```sql
SELECT ROUND(SUM(Cena_za_wyp),2) AS 'Razem' FROM ksiazki; 
```

- Średnia cena książek zaokrąglona do dwóch miejsc po przecinku
```sql
SELECT ROUND(AVG(Cena_za_wyp),2) AS 'Średnia' FROM ksiazki;
```

- Najwyższa cena za książkę zaokrąglona
```sql
SELECT ROUND(MAX(Cena_za_wyp),2) AS 'Najwyższa cena' FROM ksiazki;
```

- Najstarsze wydanie książki
```sql
SELECT MIN(RokWydania) AS 'Najstarsze wydanie' FROM ksiazki;
```