## Tworzenie pliku .sql
```sql
CREATE DATABASE bd1;
USE bd1;

CREATE TABLE wpisy (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tekst VARCHAR(20),
    uzytkownik_id INT UNSIGNED NOT NULL
);
```
## Import w CMD
*wpisy.sql jest w ścieżce mysql*
```CMD
cd c:\xampp\mysql\bin
```
```CMD
mysql --user root
```
```CMD
\source wpisy.sql
```
```sql
SELECT * FROM wpisy
```