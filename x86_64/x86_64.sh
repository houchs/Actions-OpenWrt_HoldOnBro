#!/bin/bash
# 设置lan口ip为192.168.2.5
sed -i 's/192.168.1.1/192.168.2.5/g' package/base-files/files/bin/config_generate
# 设置wan口为pppoe
sed -i 's/2:-dhcp/2:-pppoe/g' package/base-files/files/lib/functions/uci-defaults.sh
