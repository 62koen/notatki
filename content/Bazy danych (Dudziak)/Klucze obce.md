## [Baza *obcy*](https://github.com/62koen/notatki/blob/v4/attachments/SQL/obcy.sql)
Dodawanie klucza obcego
```sql
ALTER TABLE zamowienia ADD FOREIGN KEY (klientId) REFERENCES klienci (klientId);
```
- Widok designer / widok projektu

![](designer.png)
## [Zadania z PDF], Baza wynajem
1. tworząca tabelę pokoje z następującymi polami:
	‒ id, liczba całkowita dodatnia
	‒ nazwa, tekst do 20 znaków
	‒ cena, liczba rzeczywista
```sql
CREATE TABLE pokoje ( 
id int unsigned, 
nazwa varchar(20), 
cena float ); 
```
2. definiująca w tabeli *pokoje* pole id jako klucz podstawowy
```sql
ALTER TABLE `pokoje` ADD PRIMARY KEY (`id`);
```
3. (lub zestaw kwerend) wstawiająca do tabeli *pokoje* dane z Tabeli 1
```sql
INSERT INTO pokoje VALUES ('1', 'jednoosobowy', '100'); 
INSERT INTO pokoje VALUES ('2', 'dwuosobowy', '170'); 
INSERT INTO pokoje VALUES ('3', 'trzyosobowy', '210'); 
```
4. definiująca klucz obcy dla tabeli *rezerwacje* na polu id_pok łączący z tabelą *pokoje*
```sql
***ALTER TABLE rezerwacje ADD FOREIGN KEY (id) REFERENCES pokoje (id);
```
5. wybierająca z tabeli *rezerwacje* jedynie id pokoju oraz licząca łączną sumę dni jego
rezerwacji
```sql
SELECT id_pok, SUM(liczba_dn) FROM rezerwacje GROUP BY id_pok;
```
6. licząca sumę dni rezerwacji latem
```sql
SELECT SUM(liczba_dn) FROM rezerwacje WHERE sezon='lato';
```
7. aktualizująca cenę pokoi w tabeli pokoje. Cena dla wszystkich pokoi powinna zostać
podniesiona o 15%
```sql
UPDATE pokoje SET cena=cena*1.15;
```
8. tworząca użytkownika **najemca** z hasłem **n@JEM1@**
```sql
CREATE USER najemca IDENTIFIED BY 'n@JEM1@!';
```
- Znaleźć całkowity dochód jaki przyniesie wynajęcie danego pokoju
```sql
SELECT id_pok, SUM(liczba_dn)*cena AS dochód FROM pokoje, rezerwacje WHERE rezerwacje.id_pok=pokoje.id GROUP BY id_pok;
```
- Kwerenda wybierająca z tabeli *rezerwacje* jedynie *id_pok* oraz licząca łączną sumę dni jego rezerwacji, gdy ta suma przekracza 11
```sql
SELECT id_pok, SUM(liczba_dn) FROM rezerwacje GROUP BY id_pok HAVING SUM(liczba_dn)>11;
```