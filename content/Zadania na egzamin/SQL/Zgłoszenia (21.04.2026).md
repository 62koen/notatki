*Załączniki są na dole strony*

---

## Zapytanie 1: wybierające jedynie identyfikatory, imiona i nazwiska tych osób spośród personelu, których status to policjant
```sql
SELECT id, imie, nazwisko FROM personel WHERE status="policjant";
```
## Zapytanie 2: wybierające jedynie typ i zliczające liczbę pojazdów zgrupowanych według typu (zapytanie wybiera liczbę karetek i radiowozów)
```sql
SELECT typ, COUNT(typ) AS "liczba" FROM pojazdy GROUP BY typ;
```
## Zapytanie 3: wybierające jedynie te identyfikatory i nazwiska osób spośród personelu, których id nie pojawia się w rejestrze
```sql
SELECT personel.id, personel.nazwisko FROM personel LEFT JOIN rejestr ON personel.id=rejestr.id_personel WHERE rejestr.id_personel IS NULL;
```
## Zapytanie 4: wstawiające rekord do tabeli rejestr: identyfikator personelu: 1, identyfikator pojazdu: 14, automatycznie wpisywana aktualna data, klucz generowany automatycznie
```sql
INSERT INTO rejestr VALUES (NULL, CURRENT_DATE, 1, 14);
```