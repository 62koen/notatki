## Złączenie wewnętrzne 
### sąsiednich tabel
```sql
SELECT * FROM `miasta` INNER JOIN `pracownik` on miasta.MiastoId=pracownik.IdMiasta; 
```
lub
```sql
SELECT * FROM `miasta`, `pracownik` WHERE miasta.MiastoId=pracownik.IdMiasta;
``` 
### skrajnych tabel (z trzema łącznie)
```sql
SELECT rok, dlugosc FROM parada, smok, udzial WHERE parada.id=id_parada AND id_smok=smok.id;
```
### skrajnych tabel (z czterema łącznie)
```sql
SELECT klienci.imie, wykonawcy.nazwa_firmy FROM klienci, zlecenia, wykonawcy, wykonanie WHERE klienci.id_klienta=zlecenia.id_klienta AND zlecenia.id_zlecenia=wykonanie.id_zlecenia AND wykonanie.id_wykonawcy=wykonawcy.id_wykonawcy;
```
## Złączenie zewnętrzne
Od lewej (faworyzowanie prawej)
```sql
SELECT * FROM `pracownik` LEFT JOIN `miasta` ON IdMiasta=MiastoId;
```
Od prawej (faworyzowanie lewej)
```sql
SELECT * FROM `pracownik` RIGHT JOIN `miasta` ON IdMiasta=MiastoId;
```
#### Klucz obcy nie działa, gdy występują inne wartości.