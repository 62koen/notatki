*SI: Claude Sonnet 4.6*

---
# Zestaw 1

---

## Zad. 1 (4 pkt.)
**Równoległobok o kącie rozwartym 120°, boki różnią się o 1 cm, krótsza przekątna = √31 cm. Wyznacz długości boków.**

Niech krótszy bok = $a$, dłuższy bok = $b = a + 1$.

Kąt rozwarty to 120°, więc kąt przy krótszej przekątnej wynosi **60°** (przekątna leży naprzeciwko kąta 60°).

Korzystamy z **twierdzenia cosinusów** dla trójkąta utworzonego przez przekątną:

$$d^2 = a^2 + b^2 - 2ab\cos(60°)$$

$$31 = a^2 + (a+1)^2 - 2a(a+1) \cdot \frac{1}{2}$$

$$31 = a^2 + a^2 + 2a + 1 - a(a+1)$$

$$31 = 2a^2 + 2a + 1 - a^2 - a$$

$$31 = a^2 + a + 1$$

$$a^2 + a - 30 = 0$$

$$\Delta = 1 + 120 = 121, \quad \sqrt{\Delta} = 11$$

$$a = \frac{-1 + 11}{2} = 5$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw1_zad1_rownoleglobok.svg)

> ✅ **Krótszy bok = 5 cm, dłuższy bok = 6 cm**

---

## Zad. 2 (3 pkt.)
**Trapez prostokątny: krótsza podstawa = 3 cm, dłuższe ramię = 4 cm, jeden kąt = 120°. Wyznacz krótszą przekątną.**

Trapez prostokątny ma jeden kąt prosty (90°). Kąt 120° to kąt przy dłuższym ramieniu (przy dłuższej podstawie).

Oznaczmy: $AB$ = krótsza podstawa = 3 cm, $BC$ = dłuższe ramię = 4 cm, kąt $\angle ABC = 120°$.

Korzystamy z **twierdzenia cosinusów** dla przekątnej $AC$:

$$AC^2 = AB^2 + BC^2 - 2 \cdot AB \cdot BC \cdot \cos(120°)$$

$$AC^2 = 9 + 16 - 2 \cdot 3 \cdot 4 \cdot \left(-\frac{1}{2}\right)$$

$$AC^2 = 25 + 12 = 37$$

$$AC = \sqrt{37} \text{ cm}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw1_zad2_trapez.svg)

> ✅ **Krótsza przekątna = $\sqrt{37}$ cm ≈ 6,08 cm**

---

## Zad. 3 (3 pkt.)
**Prostokąt: obwód = 142 cm, przekątna jest o 1 cm dłuższa od dłuższego boku. Oblicz boki.**

Niech $a$ = krótszy bok, $b$ = dłuższy bok.

**Równanie 1** (obwód):
$$2(a + b) = 142 \implies a + b = 71$$

**Równanie 2** (przekątna):
$$d = b + 1$$

Z twierdzenia Pitagorasa:
$$a^2 + b^2 = d^2 = (b+1)^2$$

$$a^2 + b^2 = b^2 + 2b + 1$$

$$a^2 = 2b + 1$$

Z równania 1: $a = 71 - b$, podstawiamy:

$$(71 - b)^2 = 2b + 1$$

$$5041 - 142b + b^2 = 2b + 1$$

$$b^2 - 144b + 5040 = 0$$

$$\Delta = 144^2 - 4 \cdot 5040 = 20736 - 20160 = 576, \quad \sqrt{\Delta} = 24$$

$$b = \frac{144 + 24}{2} = 84 \quad \text{lub} \quad b = \frac{144 - 24}{2} = 60$$

Dla $b = 60$: $a = 71 - 60 = 11$ ✓ (a < b, więc OK)  
Dla $b = 84$: $a = 71 - 84 < 0$ ✗

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw1_zad3_prostokat.svg)

> ✅ **Boki prostokąta: 11 cm i 60 cm**

---

## Zad. 4 (2 pkt.)
**Kąty czworokąta: $x$, $4x - 10°$, $27°$, $3x - 30°$. Podaj miarę największego kąta.**

Suma kątów czworokąta = **360°**:

$$x + (4x - 10°) + 27° + (3x - 30°) = 360°$$

$$8x - 13° = 360°$$

$$8x = 373°$$

$$x = 46{,}625° \approx 46{,}6°$$

Obliczamy wszystkie kąty:
- $x = 46{,}6°$
- $4x - 10° = 186{,}5° - 10° = 176{,}5°$
- $27°$
- $3x - 30° = 139{,}9° - 30° = 109{,}9°$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw1_zad4_katy.svg)

> ✅ **Największy kąt ≈ 176,5°**

---

## Zad. 5 (1 pkt.)
**Prostokąt: przekątna = 10, boki różnią się o 2. Obwód = ?**

Niech boki to $a$ i $b = a + 2$.

Z Pitagorasa:
$$a^2 + (a+2)^2 = 100$$

$$2a^2 + 4a + 4 = 100$$

$$a^2 + 2a - 48 = 0$$

$$\Delta = 4 + 192 = 196, \quad \sqrt{\Delta} = 14$$

$$a = \frac{-2 + 14}{2} = 6, \quad b = 8$$

Obwód:
$$2(6 + 8) = 2 \cdot 14 = 28$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw1_zad5_prostokat_przekatna.svg)

> ✅ **Odpowiedź: A. 28**

---

# Zestaw 2

---

## Zad. 1 (2 pkt.)
**Równoległobok: boki 15 cm i 9 cm, jedna wysokość = 10 cm. Oblicz drugą wysokość.**

Pole równoległoboku można wyrazić na dwa sposoby:

$$P = a \cdot h_a = b \cdot h_b$$

$$15 \cdot 10 = 9 \cdot h_b$$

$$h_b = \frac{150}{9} = \frac{50}{3} \approx 16{,}\overline{6} \text{ cm}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad1_wysokosci.svg)

> ✅ **Druga wysokość = $\frac{50}{3}$ cm ≈ 16,7 cm**

---

## Zad. 2 (3 pkt.)
**Równoległobok: dłuższy bok = 16, krótsza przekątna = 14, kąt rozwarty = 120°. Oblicz pole.**

Kąt rozwarty 120° → kąt przy krótszej przekątnej = **60°**.

Z twierdzenia cosinusów (trójkąt z bokami $a$, $b=16$ i przekątną $d=14$, kąt między bokami = 60°):

$$d^2 = a^2 + b^2 - 2ab\cos(60°)$$

$$196 = a^2 + 256 - 2 \cdot a \cdot 16 \cdot \frac{1}{2}$$

$$196 = a^2 + 256 - 16a$$

$$a^2 - 16a + 60 = 0$$

$$\Delta = 256 - 240 = 16, \quad \sqrt{\Delta} = 4$$

$$a = \frac{16 \pm 4}{2} \implies a = 10 \quad \text{lub} \quad a = 6$$

Ponieważ $b = 16$ jest dłuższym bokiem, krótszy bok $a = 6$.

Pole równoległoboku (kąt ostry = 60°):

$$P = a \cdot b \cdot \sin(60°) = 6 \cdot 16 \cdot \frac{\sqrt{3}}{2} = 48\sqrt{3}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad2_rownoleglobok_pole.svg)

> ✅ **Pole = $48\sqrt{3}$ cm² ≈ 83,1 cm²**

---

## Zad. 3 (2 pkt.)
**Trapez: krótsza podstawa = $3\sqrt{6}$, kąty przy niej = 135° i 60°, dłuższe ramię = 18. Oblicz pole.**

Kąty przy krótszej podstawie $AB$: $\angle A = 135°$, $\angle B = 60°$.

Opuszczamy wysokości z końców $AB$ na dłuższą podstawę $CD$.

**Z lewej strony** (kąt 135°): kąt wewnętrzny trójkąta = 180° − 135° = 45°

Wysokość $h$ z końca $A$:
$$\tan(45°) = \frac{h}{x_1} \implies x_1 = h$$

**Z prawej strony** (kąt 60°):
$$\tan(60°) = \frac{h}{x_2} \implies x_2 = \frac{h}{\sqrt{3}}$$

Ramię przy kącie 60° to dłuższe ramię = 18:
$$\frac{h}{\sin(60°)} = 18 \implies h = 18 \cdot \frac{\sqrt{3}}{2} = 9\sqrt{3}$$

Stąd:
$$x_1 = 9\sqrt{3}, \quad x_2 = \frac{9\sqrt{3}}{\sqrt{3}} = 9$$

Dłuższa podstawa:
$$CD = AB + x_1 + x_2 = 3\sqrt{6} + 9\sqrt{3} + 9$$

Pole trapezu:
$$P = \frac{(AB + CD)}{2} \cdot h = \frac{(3\sqrt{6} + 3\sqrt{6} + 9\sqrt{3} + 9)}{2} \cdot 9\sqrt{3}$$

$$P = \frac{6\sqrt{6} + 9\sqrt{3} + 9}{2} \cdot 9\sqrt{3}$$

$$P = \frac{9\sqrt{3}}{2}(6\sqrt{6} + 9\sqrt{3} + 9)$$

$$P = \frac{9\sqrt{3} \cdot 6\sqrt{6} + 9\sqrt{3} \cdot 9\sqrt{3} + 9\sqrt{3} \cdot 9}{2}$$

$$P = \frac{54\sqrt{18} + 81 \cdot 3 + 81\sqrt{3}}{2} = \frac{162\sqrt{2} + 243 + 81\sqrt{3}}{2}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad3_trapez_pole.svg)

> ✅ **Pole = $\dfrac{162\sqrt{2} + 81\sqrt{3} + 243}{2}$ cm²**

---

## Zad. 4 (2 pkt.)
**Romb: bok = 3, $\cos(\text{kąt ostrego}) = \frac{1}{3}$.**

### a) Krótsza przekątna

Kąt ostry $\alpha$: $\cos\alpha = \frac{1}{3}$, więc $\sin\alpha = \sqrt{1 - \frac{1}{9}} = \frac{2\sqrt{2}}{3}$.

Przekątna krótsza $d_1$ leży naprzeciwko kąta ostrego. Połówka przekątnej:

$$\frac{d_1}{2} = a \cdot \sin\left(\frac{\alpha}{2}\right)$$

Korzystamy ze wzoru: $\sin\frac{\alpha}{2} = \sqrt{\frac{1-\cos\alpha}{2}} = \sqrt{\frac{1 - \frac{1}{3}}{2}} = \sqrt{\frac{1}{3}} = \frac{1}{\sqrt{3}}$

$$\frac{d_1}{2} = 3 \cdot \frac{1}{\sqrt{3}} = \sqrt{3}$$

$$d_1 = 2\sqrt{3}$$

> ✅ **Krótsza przekątna = $2\sqrt{3}$ cm**

### b) Pole rombu

Najpierw dłuższa przekątna: $\cos\frac{\alpha}{2} = \sqrt{\frac{1 + \frac{1}{3}}{2}} = \sqrt{\frac{2}{3}} = \frac{\sqrt{2}}{\sqrt{3}}$

$$\frac{d_2}{2} = 3 \cdot \frac{\sqrt{2}}{\sqrt{3}} = \sqrt{6} \implies d_2 = 2\sqrt{6}$$

$$P = \frac{d_1 \cdot d_2}{2} = \frac{2\sqrt{3} \cdot 2\sqrt{6}}{2} = 2\sqrt{18} = 6\sqrt{2}$$

Lub prościej: $P = a^2 \cdot \sin\alpha = 9 \cdot \frac{2\sqrt{2}}{3} = 6\sqrt{2}$

> ✅ **Pole rombu = $6\sqrt{2}$ cm² ≈ 8,49 cm²**

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad4_romb.svg)

---

## Zad. 5 (2 pkt.)
**Równoległobok: boki 5 i 8, kąt ostry = 60°. Wyznacz dłuższą przekątną.**

Dłuższa przekątna leży naprzeciwko kąta **rozwartego** = 180° − 60° = **120°**.

Z twierdzenia cosinusów:

$$d^2 = a^2 + b^2 - 2ab\cos(120°)$$

$$d^2 = 25 + 64 - 2 \cdot 5 \cdot 8 \cdot \left(-\frac{1}{2}\right)$$

$$d^2 = 89 + 40 = 129$$

$$d = \sqrt{129}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad5_przekatna.svg)

> ✅ **Dłuższa przekątna = $\sqrt{129}$ cm ≈ 11,36 cm**

---

## Zad. 6 (2 pkt.)
**Równoległobok $ABCD$: $AB = 6$, kąt $DAB = 45°$, wysokość $DE = 4$. Oblicz $AD$ oraz przekątne $AC$ i $BD$.**

### Bok AD

Z definicji wysokości (prostopadle do $AB$):

$$\sin(45°) = \frac{DE}{AD} \implies AD = \frac{4}{\sin(45°)} = \frac{4}{\frac{\sqrt{2}}{2}} = \frac{8}{\sqrt{2}} = 4\sqrt{2}$$

> ✅ **$AD = 4\sqrt{2}$ cm**

### Przekątna AC (naprzeciwko kąta ostrego 45°)

$$AC^2 = AB^2 + AD^2 - 2 \cdot AB \cdot AD \cdot \cos(45°)$$

$$AC^2 = 36 + 32 - 2 \cdot 6 \cdot 4\sqrt{2} \cdot \frac{\sqrt{2}}{2}$$

$$AC^2 = 68 - 2 \cdot 6 \cdot 4\sqrt{2} \cdot \frac{\sqrt{2}}{2} = 68 - 48 = 20$$

$$AC = \sqrt{20} = 2\sqrt{5}$$

### Przekątna BD (naprzeciwko kąta rozwartego 135°)

$$BD^2 = AB^2 + AD^2 - 2 \cdot AB \cdot AD \cdot \cos(135°)$$

$$BD^2 = 36 + 32 - 2 \cdot 6 \cdot 4\sqrt{2} \cdot \left(-\frac{\sqrt{2}}{2}\right)$$

$$BD^2 = 68 + 48 = 116$$

$$BD = \sqrt{116} = 2\sqrt{29}$$

![](https://raw.githubusercontent.com/62koen/notatki/8d1ddd33a9b610b778ccf13b3b56ac7c301bf29c/attachments/img/Czworok%C4%85ty/zestaw2_zad6_rownoleglobok_ABCD.svg)

> ✅ **$AC = 2\sqrt{5}$ cm ≈ 4,47 cm, $BD = 2\sqrt{29}$ cm ≈ 10,77 cm**

---
# Przegląd wzorów
---

## **Zestaw 1**

- **Zad. 1, 2** → Twierdzenie cosinusów: $c^2 = a^2 + b^2 - 2ab\cos\gamma$
- **Zad. 3** → Twierdzenie Pitagorasa + układ równań z obwodem
- **Zad. 4** → Suma kątów czworokąta = 360°
- **Zad. 5** → Twierdzenie Pitagorasa + obwód prostokąta = $2(a+b)$

---

## **Zestaw 2**

- **Zad. 1** → Pole równoległoboku dwoma sposobami: $P = a \cdot h_a = b \cdot h_b$
- **Zad. 2** → Twierdzenie cosinusów + pole: $P = ab\sin\alpha$
- **Zad. 3** → Trygonometria w trójkącie ($\tan$, $\sin$) + pole trapezu: $P = \frac{(a+b)}{2} \cdot h$
- **Zad. 4** → Wzory na połówki przekątnych rombu: $\frac{d}{2} = a\sin\frac{\alpha}{2}$ oraz pole: $P = \frac{d_1 \cdot d_2}{2}$ (albo krócej $P = a^2\sin\alpha$)
- **Zad. 5** → Twierdzenie cosinusów (kąt rozwarty = 180° − kąt ostry)
- **Zad. 6** → $\sin\alpha = \frac{h}{a}$ (definicja wysokości) + twierdzenie cosinusów dla obu przekątnych