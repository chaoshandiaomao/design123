#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate
sed -i '$d' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio1.ssid='tianya_5G' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio1.encryption='psk2+ccmp' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio1.key='12345678' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.radio0.htmode='HT40' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.radio0.band='2g' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.radio0.channel='1' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.radio0.noscan='1' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio0.ssid='tianya' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio0.encryption='psk2+ccmp' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.default_radio0.key='12345678 package/base-files/files/bin/config_generate'
sed -i '$a uci set wireless.radio1.disabled='0' package/base-files/files/bin/config_generate
sed -i '$a uci set wireless.radio0.disabled='0' package/base-files/files/bin/config_generate
sed -i '$a uci set system.@system[0].zonename='Asia/Hong Kong' package/base-files/files/bin/config_generate
sed -i '$a uci set system.@system[0].timezone='HKT-8' package/base-files/files/bin/config_generate
sed -i '$a uci set upnpd.config.enabled='1' package/base-files/files/bin/config_generate
sed -i '$a uci set ttyd.@ttyd[0].command='/bin/login -f root' package/base-files/files/bin/config_generate
sed -i '$a uci commit' package/base-files/files/bin/config_generate
#主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
