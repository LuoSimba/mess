


# HTTP
service nginx start
service nginx status

# Firewall
service firewalld status
service firewalld start

systemctl status firewalld
systemctl stop   firewalld

firewall-cmd --state

firewall-cmd --query-port=80/tcp
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --remove-port=80/tcp
firewall-cmd --reload

# 防火墙过滤 IP 地址、端口


# 开机启动
systemctl enable nginx
systemctl disable firewalld

