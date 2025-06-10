# Wiedza
## Linux
### Statyczny adres IP (Netplan)
Jeżeli w konfiguracji serwera Ubuntu pojawi się statyczna adresacja, prawdopodobnie najlepiej będzie użyć pliku konfiguracyjnego Netplan. Jeżeli jedna z kart ma otrzymywać adresy automatycznie (przez DHCP), możemy ją po prostu pominąć - domyślnie tak działa każdy system. Tutaj skupimy się na statycznej adresacji.

Zanim jednak zaczniemy tworzyć plik, należy zobaczyć, jaką nazwę mają zainstalowane karty sieciowe. Służy do tego proste polecenie `ip a`.
```sh
ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s25: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 00:16:3e:e2:52:42 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 10.102.66.200/24 brd 10.102.66.255 scope global dynamic eth0
       valid_lft 3257sec preferred_lft 3257sec
    inet6 fe80::216:3eff:fee2:5242/64 scope link
       valid_lft forever preferred_lft forever
3: enp0s28: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 00:16:3e:e2:52:42 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 10.102.66.200/24 brd 10.102.66.255 scope global dynamic eth0
       valid_lft 3257sec preferred_lft 3257sec
    inet6 fe80::216:3eff:fee2:5242/64 scope link
       valid_lft forever preferred_lft forever
```
Interesują nas liczby 2 i 3 oraz ciąg znaków po nich. Karta z mniejszą liczbą (2), to ta wbudowana, natomiast większa (3), to dodatkowa, położona niżej w obudowie. Jeżeli mamy do skonfigurowania tylko jedną kartę sieciową, wystarczy nam dwójka, czyli `enp0s25`, natomiast gdy potrzeba dodatkowej, trzeba ustawić także trójkę, czyli `enp0s28`.
![](https://raw.githubusercontent.com/62koen/notatki/10a647ed0b0adbcaace99301d1a3a77817ccae80/attachments/Egzamin/Karty%20sieciowe.svg)

Do tworzenia pliku konfiguracyjnego posłużymy się edytorem Nano, wbudowanym w Linuxa, którym będziemy edytować plik ``/etc/netplan/99_config.yaml``. Robimy to w ten sposób: 
```sh
sudo nano /etc/netplan/99_config.yaml
```
Sudo *(Super User DO, czyli "zrób to jako superużytkownik", w znaczeniu root)* służy do uruchomienia edytora jako root (Linuxowy administrator). Jest to potrzebne, ponieważ tworzymy ważny plik konfiguracyjny, który nie powinien być edytowany przez zwykłych użytkowników. 
Gdy już dostaniemy się do edytora, będzie trzeba dostosować następujący schemat pliku do adresów z arkusza (nawiasy okrągłe są do wypełnienia):
```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    (nazwa karty 2):
      addresses:
        - (ip karty 2)/(maska karty 2)
      routes:
        - to: default
          via: (brama karty 2)
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [(pierwszy dns karty 2, (drugi dns karty 2)]
    (nazwa karty 3):
      addresses:
        - (ip karty 3)/(maska karty 3)
      routes:
        - to: default
          via: (brama karty 3)
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [(pierwszy dns karty 3, (drugi dns karty 3)]
```
Przykładowo wygląda to tak:
```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s25:
      addresses:
        - 192.168.0.1/24
      routes:
        - to: default
          via: 192.168.0.2
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [8.8.8.8, 8.8.4.4]
    enp0s28:
      addresses:
        - 90.90.10.10/16
      routes:
        - to: default
          via: 90.90.10.1
```
**Uwaga: każde wcięcie z myślnikiem to jeden Tab (dwie spacje), natomiast bez myślnika - dwa Taby (cztery spacje). Brak jednego wcięcia powoduje błąd i trzeba tego pilnować.**

Celowo usunąłem sekcję `nameservers`, czyli adresy DNS, w dodatkowej karcie, ponieważ zazwyczaj służy ona do połączenia się z drukarką (choć czasem zdarzy się, że jest wykorzystywana ze switchem).

Plik w Nano zapisujemy kombinacją **Ctrl+O**, a wychodzimy z programu za pomocą **Ctrl+X**.

Aby wprowadzić w życie naszą ciężką pracę mamy polecenie:
```sh
sudo netplan apply
```
Jeżeli wyskakuje nam **tylko** żółte ostrzeżenie o niewłaściwych uprawnieniach:
```sh
** (process:2494): WARNING **: 05:24:25.296: Permissions for /etc/netplan/99_config.yaml are too open. Netplan configuration should NOT be accessible by others.
```
Możemy iść dalej. Natomiast jeśli pod spodem zobaczymy coś takiego:
```sh
/etc/netplan/99_config.yaml:2:10: Invalid YAML: mapping values are not allowed in this context:
	version: 2
		   ^
```
mamy coś źle w okolicach, o których wspomina błąd (tutaj okolice `version`, a konkretnie średnik (;) po `network` zamiast dwukropka; w innym przypadku może to być nieodpowiednia spacja itp.)

Poprawność adresów można sprawdzić ponownie poleceniem `ip a`, które teraz powinno wyświetlać wpisane przez nas wartości.

Pan Wegner (zdecydowany autorytet w komputery) zaleca restart po zastosowaniu Netplana, więc wpisujemy: `sudo reboot`. Konfiguracja zakończona.
Jeśli umiecie w angielski, tutaj jest oficjalna, szczegółowa dokumentacja: [Ubuntu Server - Configuring networks](https://documentation.ubuntu.com/server/explanation/networking/configuring-networks/index.html)
### Ogólne polecenia
Każde polecenie po dodaniu `--help` ukaże nam opcje, jakie możemy w nim zastosować i jego zasadę działania (oczywiście po angielsku).
Gdy jakieś polecenie wywala błąd wspominając o **"permissions", "super-user", "root"**, należy dołożyć przed poleceniem klasyczne **`sudo`**.
Gdy długość helpa jest większa, niż zmieści ekran, możemy zastosować `| less` po dowolnej komendzie, np. `ls --help | less`.
Gdy chcemy opuścić polecenie, robimy to **Ctrl+Z** lub **Ctrl+C**
- **`sudo adduser`** - dodaje użytkowników
- **`sudo addgroup`** - dodaje grupę
- **`sudo deluser`** - usuwa użytkowników
- **`ls`** - wyświetla zawartość katalogu w którym jesteśmy
	- **`ls -l`** - wyświetla dodatkowo uprawnienia i właścicieli plików/folderów
- **`sudo lshw`** - wyświetla informacje o naszym sprzęcie (bardzo przydaje się dodanie `| less` i stosowanie grup sprzętu jakie się pojawiają, czyli `sudo lshw -c cpu` wyświetli nam info o procku)
- **`(polecenie) > plik.txt`** - eksportuje wynik polecenia do pliku (np. `ls -l > uprawnienia.txt`)
# Zadania na ostatnich egzaminach
## [2025 - Styczeń - Arkusz 4](https://egzamin-informatyk.pl/arkusz-praktyczny-inf02-2025-01-04/)
### Zad. 2
Korzystając z poleceń systemowych na **stacji roboczej w systemie Linux** dokonaj identyfikacji podzespołów komputera i parametrów technicznych zasilacza:
- sprawdź parametry `procesora` i `dysku` umieszczone w `Tabeli 1. Parametry podzespołów stacji roboczej` w arkuszu egzaminacyjnym
- wykonaj zrzuty ekranu z widocznym poleceniem i wynikiem jego działania dla procesora w pliku graficznym o nazwie `cpu.jpg` oraz dla dysku w pliku graficznym o nazwie `dysk.jpg`. Pliki umieść na nośniku USB opisanym `Egzamin-x`, gdzie `x` oznacza numer stanowiska zdającego
- odczytane parametry zapisz w `Tabeli 1`
- korzystając z tabliczki znamionowej zasilacza odczytaj parametry techniczne zasilacza stacji roboczej i zapisz je w `Tabeli 2. Parametry techniczne zasilacza` w arkuszu egzaminacyjnym
### Zad. 6
Skonfiguruj **serwer z zainstalowanym systemem Windows**:
- interfejs sieciowy podłączony do przełącznika:
    - adres IP: `192.168.0.100+X/24`, gdzie `X` to numer stanowiska egzaminacyjnego
    - brama domyślna: `192.168.0.1`
    - serwer DNS: `localhost`
- zainstaluj usługę `Active Directory`
    - promuj serwer do roli `kontrolera domeny` oraz utwórz domenę `inf02.local` w nowym lesie
    - hasło `Administratora` trybu przywracania usług katalogowych `ZAQ!2wsx`
    - utwórz w domenie jednostki organizacyjne: `Uczniowie` i `Egzaminatorzy`
    - w jednostce organizacyjnej `Egzaminatorzy` utwórz konto użytkownika `Jan Abacki` z nazwą logowania `jabacki` oraz hasłem `ZAQ1@wsx1`
    - w jednostce organizacyjnej `Uczniowie` utwórz konto użytkownika `Zenon Babacki` z nazwą logowania `zbabacki` oraz hasłem `ZAQ1@wsx2`
- utwórz grupę globalną `Egzamin` oraz dodaj do niej użytkowników `jabacki` i `zbabacki`
- dodaj usługę `drukowania`, a następnie zainstaluj i udostępnij `drukarkę sieciową`:
    - dodaj do serwera wydruku `drukarkę sieciową` wykorzystując protokół `RAW` przez `TCP/IP`
    - ustaw nazwę drukarki `Egzamin_druk` oraz udostępnij drukarkę z taką samą nazwą udziału
    - ustaw drukarce `najwyższy` priorytet
    - ustaw dostępność drukarki w godzinach `8:00 ÷ 22:00`
    - ustaw zabezpieczenia tak, aby tylko grupa `Egzamin` mogła drukować, `TWÓRCA - WŁAŚCICIEL` zarządzać dokumentami oraz `Administrator` miał pełną kontrolę
    - przez zasady grup rozmieść zainstalowaną drukarkę użytkownikom jednostki organizacyjnej `Uczniowie`
- dodaj nowy obiekt zasad grupy dla jednostki organizacyjnej `Uczniowie` o nazwie `Panel` i w konfiguracji użytkownika włącz opcję `Zabroń dostępu do Panelu sterowania`
- zezwól komputerom z uwierzytelnieniem na poziomie sieci na podłączenie się do serwera przez `Pulpit zdalny`
### Zad. 7
Skonfiguruj **stację roboczą z zainstalowanym systemem Windows**:
- przewodowy interfejs sieciowy stacji roboczej podłączony do przełącznika:
    - adres IP: `192.168.0.50+X/24`, gdzie `X` to numer stanowiska egzaminacyjnego
    - brama domyślna: adres IP rutera
    - serwer DNS: adres IP serwera
- dodaj stację roboczą do domeny `inf02.local`
- połącz się z serwerem korzystając z `Pulpitu zdalnego`
- zaloguj się do domeny na konto `zbabacki` a następnie sprawdź możliwość uruchomienia `Panelu Sterowania`
- wykonaj wydruk strony testowej z udostępnionej na serwerze drukarki
### Zad. 9
Sporządź, w arkuszu kalkulacyjnym kalkulację zapotrzebowania na moc podzespołów jednostki centralnej w ramach planowanej modernizacji. Plik zapisz pod nazwą `kalkulacja_mocy` na nośniku USB opisanym `Egzamin-x`:
- kalkulację wykonaj według `Tabeli 3. Wzór kalkulacji mocy podzespołów`
- obliczenie łącznego zapotrzebowania na moc modernizowanych podzespołów jednostki centralnej w komórce `B9` powinno wykonywać się automatycznie
- w komórce `B11` należy wpisać `maksymalną moc zasilacza` zapisaną w `Tabeli 2`
- wartość komórki `B12` jest równa komórce `B9` powiększonej o `20%`, co powinno być obliczane automatycznie
- W komórce `B13` za pomocą formuły jest ustalany napis „NIE”, jeżeli moc z komórki `B11` jest `większa lub równa` mocy z komórki `B12` lub napis „TAK” w przeciwnym wypadku

*Tabelki znajdują się wyżej, w linku do arkusza*
## [2025 - Styczeń - Arkusz 3](https://egzamin-informatyk.pl/arkusz-praktyczny-inf02-2025-01-03/)
### Zad. 2
Skonfiguruj ruter zgodnie z następującymi zaleceniami:
- adres IP interfejsu WAN: `100.100.100.5/28`
- brama domyślna interfejsu WAN: `100.100.100.1`
- serwer DNS interfejsu WAN: `8.8.8.8` oraz drugi serwer DNS: `4.4.4.4`, jeśli jest wymagany
- adres IP interfejsu LAN `192.168.1.1/24`
- `włącz` serwer DHCP
- zakres dzierżawy DHCP: `192.168.1.50 ÷ 192.168.1.55`
- adres IP `192.168.1.51` zarezerwowany dla adresu MAC bezprzewodowej karty sieciowej stacji roboczej
- sieć bezprzewodowa o nazwie: `EGZAMIN_XX`, gdzie `XX` to numer stanowiska egzaminacyjnego
- uwierzytelnienie sieci bezprzewodowej tylko `WPA2 PSK` z kluczem: `Qwerty_7` i szyfrowaniem `AES` lub `CCMP`
- kanał `XX` dla transmisji bezprzewodowej `2,4 GHz`, gdzie `XX` to numer stanowiska egzaminacyjnego