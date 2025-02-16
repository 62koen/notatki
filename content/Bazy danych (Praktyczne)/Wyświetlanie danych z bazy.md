## Przykładowa baza z samochodami

```sql
SELECT * from marki where marka="Opel"
```
Wyświetla elementy z tabeli marki, których marka to Opel

```sql
SELECT * from marki order BY rocznik (desc)
```
Sortuje elementy tabeli ze względu na jedną z kolumn w kolejności rosnącej (malejącej)

```sql
SELECT rocznik, kolor from marki
```
Wyświetla dane z kolumn rocznik i kolor

```sql
SELECT * from marki where id="3" and kolor="fioletowy"
```
Wyświetla element, którego id to 3 i kolor to fioletowy (oba warunki muszą zostać spełnione)

```sql
SELECT * from marki where id="2" or id="1"
```
Wyświetla elementy, które spełniają warunek id=2 LUB id=1 (wystarczy jeden warunek spełniony)

```sql
SELECT * from marki limit 2
```
Wyświetla elementy z id do dwóch
## [Baza mys]()

```sql
SELECT * FROM employee WHERE FirstName LIKE "J%"
```
Wyświetlamy imiona, które zaczynają się na literę "J"; np. John, James
"%" oznacza dowolne ZNAKI, a "_" to dowolny ZNAK

```sql
SELECT * FROM employee WHERE LastName LIKE "%n"
```
Wyświetlamy nazwiska, które kończą się na literę "n"; np. Wilson, Brown

```sql
SELECT * FROM employee WHERE FirstName LIKE "_a%"
```
Wyświetlamy imiona, w których druga litera to "a"; np. Mary, James

```sql
SELECT * FROM employee WHERE FirstName LIKE "Jo%n"
```
Wyświetlamy imiona, które zaczynają się na "Jo", a kończą na "n"; np. John, Jonathan

```sql
SELECT * FROM employee WHERE LastName LIKE "A_d%n"
```
Wyświetlamy nazwiska, które zaczynają się na "A", trzecia litera to "d", a ostatnia to "n"; np. Anderson

```sql
SELECT * FROM employee WHERE LastName NOT LIKE "W%"
```
Wyświetlamy nazwiska, które NIE zaczynają się na "W"

```sql
SELECT DISTINCT LastName FROM employee
```
Wyświetlamy nazwiska bez powtórzeń (distinct)