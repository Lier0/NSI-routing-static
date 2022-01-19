# nsi-routing-static
Static routing example

## Requirement
* vagrant (https://www.vagrantup.com/downloads)
* virtualbox -default- (https://www.virtualbox.org/wiki/Downloads)

## Deployment
```
wget https://github.com/Lier0/nsi-routing-static/archive/refs/heads/main.zip
unzip main.zip
cd nsi-routing-static-main
vagrant up
```

## Doc
### local config
* Check https://github.com/Lier0/nsi-routing-static/blob/main/setup.sh

### man
https://www.man7.org/linux/man-pages/man8/ip-route.8.html

```
ip route add DEST/MASK via GATEWAY
ip route add DEST/MASK dev INTERFACE
```
Dev if it's host to host "physical" link, so you should prefer `ip r a 10.0.2.0/24 via 10.0.2.15` to specify the gateway.

## Practical Exercice
192.168.
60.1, 61.1 <=> 61.2, 62.2 <=> 62.3, 63.3

Add routes on each host to enable:
```
vagrant@ubuntu-static1:~$ ping 192.168.63.3
PING 192.168.63.3 (192.168.63.3) 56(84) bytes of data.
64 bytes from 192.168.63.3: icmp_seq=1 ttl=63 time=0.534 ms
```
