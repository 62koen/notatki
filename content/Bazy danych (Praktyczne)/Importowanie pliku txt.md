[Plik malowanie.txt](https://github.com/62koen/notatki/blob/v4/attachments/SQL/malowanie.txt)
## Zadanie

![[https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zad-bd.jpg]]
## Import pliku txt
- Po utworzeniu tabeli

## Kwerendy z zadania
1. 
```sql 
SELECT cena FROM farby WHERE kolor="niebieski";
``` 
2. 
```sql
SELECT kolor FROM farby, malowanie
```
3. 
```sql
SELECT farby.kolor from farby, malowanie WHERE farby.id_farby=malowanie.id_farby AND malowanie.id_pomieszczenia='3';
```