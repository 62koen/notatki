## Złączenie wewnętrzne
```sql
SELECT * FROM `miasta` INNER JOIN `pracownik` on miasta.MiastoId=pracownik.IdMiasta; 
```
lub
```sql
SELECT * FROM `miasta`, `pracownik` WHERE miasta.MiastoId=pracownik.IdMiasta;
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