
alias ip="ip -color"

# =========
# Usage
# =========

ip OBJECT COMMAND
ip OBJECT help

man ip
man ip-address


# =========
# Address
# =========

# show address
ip addr

# set address
ip addr add 1.2.3.4/16 dev wlan0

# =========
# Route
# =========


# show routes
#
# There are many route tables.
# Kernel use the main table (ID 254).
# 
# 254 main
# 255 local    for local and broadcast addresses.
ip route
ip route show
ip route show table main
ip route show table local


# add, change, delete
ip route add     ...
ip route change  ...
ip route delete  ...
ip route add default via 192.168.31.1 dev wlan0


# check
ip route get  ...


