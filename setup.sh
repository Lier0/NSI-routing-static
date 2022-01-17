# = sys =
sed "s/#net\.ipv4\.ip_forward/net.ipv4.ip_forward/g" -i /etc/sysctl.conf
sysctl -p
