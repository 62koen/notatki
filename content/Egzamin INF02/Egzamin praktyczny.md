## Linux
#### Statyczny adres IP (Netplan)
Jeżeli w konfiguracji serwera Ubuntu pojawi się statyczna adresacja, prawdopodobnie najlepiej będzie użyć pliku konfiguracyjnego Netplan. 
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
Interesują nas liczby 2 i 3 oraz ciąg znaków po nich. Karta z mniejszą liczbą (2) to ta wbudowana, natomiast większa (3) to dodatkowa, położona niżej w obudowie. Jeżeli mamy do skonfigurowania tylko jedną kartę sieciową, wystarczy nam dwójka, czyli `enp0s25`, natomiast gdy potrzeba dodatkowej, trzeba ustawić także trójkę, czyli `enp0s28`.
![](https://raw.githubusercontent.com/62koen/notatki/52f8eb73800d74906ecc77293c33d4666b773471/attachments/Egzamin/Karty%20sieciowe.svg)

Do tworzenia pliku konfiguracyjnego posłużymy się edytorem Nano, wbudowanym w Linuxa, którym będziemy edytować plik ``/etc/netplan/99_config.yaml``.