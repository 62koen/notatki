```sql
CREATE TABLE kopia_klienci LIKE klienci;
INSERT INTO kopia_klienci SELECT * FROM klienci;
```