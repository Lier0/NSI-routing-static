# nsi-routing-static
Environnement de travaux pratiques pour le routage statique

## Pré-requis
* vagrant (https://www.vagrantup.com/downloads)
* virtualbox -default- (https://www.virtualbox.org/wiki/Downloads)

## Déploiement
```
wget https://github.com/Lier0/nsi-routing-static/archive/refs/heads/main.zip
unzip main.zip
cd nsi-routing-static-main
vagrant up
```

## Doc
### configuration locale
* Check https://github.com/Lier0/nsi-routing-static/blob/main/setup.sh

### man
https://www.man7.org/linux/man-pages/man8/ip-route.8.html

```
ip route add DEST/MASK via GATEWAY
ip route add DEST/MASK dev INTERFACE
```
`dev` si c'est une connexion "directe" vers une autre machine. Il est souvent préférable de préciser la passerelle : `ip r a 10.0.2.0/24 via 10.0.2.15`.

## Travaux pratiques
Réseau en 192.168.
```
        72.0--[R]--84.0
        /      |       \
60.0--[R]     83.0     [R]--64.0
        \      |       /
        73.0--[R]--94.0

```

Ajouter les routes sur chaque hôte pour permettre :
```
vagrant@ubuntu-static1:~$ ping -I 192.168.60.1 192.168.64.4
PING 192.168.64.4 (192.168.64.4) from 192.168.60.1 : 56(84) bytes of data.
64 bytes from 192.168.64.4: icmp_seq=1 ttl=63 time=0.535 ms
```
