


# get current config
systemctl get-default

# 启动到图形界面
systemctl set-default graphical.target

# 启动到终端界面
systemctl set-default multi-user.target


# 从终端切换到图形界面
startx

