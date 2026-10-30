## Zapytania
### Zapytanie 3: wybierające z tabeli pojazdy jedynie pola: marka, model, cena oraz odpowiadające im z tabeli kolory pola: nazwa, doplata dla modelu „alfa”. Należy posłużyć się relacją
```sql
SELECT marka, model, cena, nazwa, doplata FROM pojazdy, kolory WHERE model="alfa" AND kolory.id=pojazdy.kolor;
```
## Zapytanie 4: losujące dwa dowolne rekordy z tabeli pojazdy i wybierające jedynie markę, model i cenę
```sql
SELECT marka, model, cena FROM pojazdy ORDER BY RAND() LIMIT 2;
```
