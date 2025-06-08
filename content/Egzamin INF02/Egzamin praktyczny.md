# Linux
## Statyczny adres IP (Netplan)
Jeżeli w konfiguracji serwera Ubuntu pojawi się statyczna adresacja, prawdopodobnie najlepiej będzie użyć pliku konfiguracyjnego Netplan. Jeżeli jedna z kart ma otrzymywać adresy automatycznie (przez DHCP), możemy ją po prostu pominąć - domyślnie tak działa każdy system. Tutaj skupimy się na statycznej adresacji.

Zanim jednak zaczniemy go tworzyć, należy zobaczyć, jaką nazwę mają zainstalowane karty sieciowe. Służy do tego proste polecenie `ip a`.
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
Jeżeli wyskakuje nam jedynie żółte ostrzeżenie o niewłaściwych uprawnieniach:
```sh
** (process:2494): WARNING **: 05:24:25.296: Permissions for /etc/netplan/99_config.yaml are too open. Netplan configuration should NOT be accessible by others.
```
Możemy iść dalej. Natomiast jeśli straszy nas czerwony komunikat, *mamy coś źle* (spacje, adresy, literówki).

Poprawność adresów można sprawdzić ponownie poleceniem `ip a`, które teraz powinno wyświetlać wpisane przez nas wartości.

Pan Wegner (zdecydowany autorytet w komputery) zaleca restart po zastosowaniu Netplana, więc wpisujemy: `sudo reboot`. Konfiguracja zakończona.
Jeśli umiecie w angielski, tutaj jest oficjalna, szczegółowa dokumentacja: [Ubuntu Server - Configuring networks](https://documentation.ubuntu.com/server/explanation/networking/configuring-networks/index.html)
## Dodawanie użytkowników, grup