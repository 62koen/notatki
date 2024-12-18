*Gotowy plik z rozszerzeniem .sql można zaimportować do bazy*
```sql
CREATE DATABASE szkola;
USE szkola;
CREATE TABLE uczniowie (
    id_ucz int primary key auto_increment,
    Nazwisko varchar(20),
    Imie varchar(20),
    Adres_ul varchar(15),
    Adres_nr varchar(4),
    Miasto varchar(20) );

INSERT into uczniowie (Nazwisko, Imie, Adres_ul, Adres_nr, Miasto) VALUES ('Abacki', 'Jan', 'Nocna', '21a', 'Gniezno');
INSERT into uczniowie (Nazwisko, Imie, Adres_ul, Adres_nr, Miasto) VALUES ('Babacki', 'Tomasz', 'Gwiezdna', '2', 'Gniezno');
INSERT into uczniowie (Nazwisko, Imie, Adres_ul, Adres_nr, Miasto) VALUES ('Cabacki', 'Jerzy', 'Mierna', '13b', 'Kutno');
INSERT into uczniowie (Nazwisko, Imie, Adres_ul, Adres_nr, Miasto) VALUES ('Dabacki', 'Tobiasz', 'Bierna', '3', 'Miastko');
INSERT into uczniowie (Nazwisko, Imie, Adres_ul, Adres_nr, Miasto) VALUES ('Ebacki', 'Adrian', 'Marna', '456', 'Mielno');
```