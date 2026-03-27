*Załączniki są na dole strony*

---

## Zapytanie 1: wybierające jedynie pola informacja, wart_min i wart_max z tabeli bmi
```sql
SELECT informacja, wart_min, wart_max FROM bmi;
```
## Zapytanie 2: wstawiające do tabeli wynik rekord z danymi: klucz główny nadawany automatycznie, bmi_id = 3, data_pomiaru = 2020-05-10, wynik = 27
```sql
INSERT INTO wynik VALUES (NULL, 3, "2020-05-10", 27);
```
## Zapytanie 3: wybierające jedynie pola wynik i data_pomiaru z tabeli wynik oraz informacja z tabeli bmi; zapytanie wykorzystuje relację
```sql
SELECT wynik, data_pomiaru, informacja FROM wynik, bmi WHERE wynik.bmi_id=bmi.id;
```
## Zapytanie 4: wybierające jedynie pola wart_min i wart_max z tabeli bmi dla nadwagi (w polu informacja)
```sql
SELECT wart_min, wart_max FROM bmi WHERE informacja="nadwaga";
```