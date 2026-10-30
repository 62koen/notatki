- *Załączniki są na dole strony*
- **Tryb responsywny w Firefoxie**: Menu -> Więcej narzędzi -> Tryb responsywny

---
## Przykład 1

### Polecenie
Do 620px, szerokość dla id kol1 - 100%
### Kod responsywny
```css
@media (max-width: 620px) {
    #kol1 {width: 100%;}
    #footer {display: none;} }
img { 
    max-width: 100%;
    height: auto;
    width: auto; }
```
## Przykład 2
### Polecenie
Do 800px, szerokość bloków sekcji - 100%
### Kod responsywny
```css
@media (max-width: 800px) {
    #container {
        flex-direction: column;
    }

    section {
        width: 100%;
    }
}
```
