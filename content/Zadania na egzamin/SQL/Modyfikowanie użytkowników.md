## Tworzenie użytkownika z hasłem
```sql
CREATE USER 'nauczyciel'@'localhost' identified by 'm@tematy';
```
## Nadanie uprawnień do wybierania danych
```sql
GRANT SELECT ON smoki.smok TO 'nauczyciel'@'localhost';
```
## Odebranie tych samych uprawnień
```sql
REVOKE SELECT ON smoki.smok FROM 'nauczyciel'@'localhost';
```
## Nadanie pełnych uprawnień
```sql
GRANT ALL PRIVILEGES ON smoki.smok TO 'nauczyciel'@'localhost';
```
## Odebranie pełnych uprawnień
```sql
REVOKE ALL PRIVILEGES ON smoki.smok FROM 'nauczyciel'@'localhost';
```
## Wyświetlenie uprawnień
```sql
SHOW GRANTS FOR 'nauczyciel'@'localhost';
```
## Usunięcie użytkownika
```sql
DROP USER 'nauczyciel'@'localhost';
```