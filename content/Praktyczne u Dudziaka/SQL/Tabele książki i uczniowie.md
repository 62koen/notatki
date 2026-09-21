### Zapytanie 1: wybierające jedynie nazwisko, imię, klasę i datę wypożyczenia dla uczniów dla których data wypożyczenia jest późniejsza niż 2020-03-02
```sql
SELECT nazwisko, imie, klasa, data_wypozyczenia FROM uczniowie WHERE data_wypozyczenia>"2020-03-02";
```
### Zapytanie 2: wybierające jedynie nazwisko, imię i datę wypożyczenia oraz odpowiadające im pola autor i kod książki wypożyczonej przez ucznia. Należy posłużyć się relacją
```sql
/* SELECT u.nazwisko, u.imie, u.data_wypozyczenia, k.autor, k.kod FROM uczniowie u JOIN ksiazki k ON u.id_ksiazki=k.kod; */ (nie działa)
```
### Zapytanie 3: usuwające wszystkie rekordy tabeli ksiazki, w których autorowi została przypisana wartość '0'
```sql
DELETE FROM ksiazki WHERE autor="0";
```
### Zapytanie 4: wybierające losowo dokładnie pięć rekordów z całej tabeli ksiazki zawierających jedynie pola autor, tytul i kod
```sql
SELECT autor, tytul, kod FROM ksiazki ORDER BY rand() LIMIT 5;
```