[Plik malowanie.txt](https://github.com/62koen/notatki/blob/v4/attachments/SQL/malowanie.txt)
## Zadanie

![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/zad-bd.jpg)
## Import pliku txt
- Po utworzeniu tabeli i wypełnieniu tabeli *farby* oraz samym utworzeniu tabeli *malowanie* przechodzimy do zakładki "Importuj" w phpMyAdmin. Tam wybieramy typ pliku  CSV, a w "Columns separated with:" (czyli Kolumny oddzielone:) zamiast średnika lub przecinka jest po prostu spacja - bo tak oddzielone są kolumny w naszym pliku malowanie.txt. Wybieramy plik z naszego komputera i powinniśmy mieć zaimportowane dane do tabeli malowanie.
![](https://raw.githubusercontent.com/62koen/notatki/refs/heads/v4/attachments/SQL/Import%20txt.png)
## Kwerendy z zadania
1. 
```sql 
SELECT cena FROM farby WHERE kolor="niebieski";
``` 
2. 
```sql
SELECT kolor, cena/pojemnosc FROM farby
```
3. 
```sql
SELECT farby.kolor FROM farby, malowanie WHERE farby.id_farby=malowanie.id_farby AND malowanie.id_pomieszczenia='3';
```