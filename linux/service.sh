

# Show all services
systemctl list-units --type=service


# HTTP
service nginx start
service nginx status

# Firewall
service firewalld status
service firewalld start

systemctl start  firewalld
systemctl status firewalld
systemctl stop   firewalld

firewall-cmd --state

firewall-cmd --query-port=80/tcp
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --remove-port=80/tcp
firewall-cmd --reload

# firewall filter { ip address, port }


# boot
systemctl enable nginx
systemctl disable firewalld


# power manage
systemctl poweroff
systemctl suspend # sleep




