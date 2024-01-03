#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

rm -rf feeds.conf.default
{
echo 'src-git packages https://git.openwrt.org/feed/packages.git'
#echo 'src-git luci https://git.openwrt.org/project/luci.git^7739e9f5b03b830f51d53c384be4baef95054cb3'
echo 'src-git routing https://git.openwrt.org/feed/routing.git^83ef3784a9092cfd0a900cc28e2ed4e13671d667'
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git^9746ae8f964e18f04b64fbe1956366954ff223f8'

#echo 'src-git packages https://github.com/coolsnowwolf/packages'
echo 'src-git luci https://github.com/coolsnowwolf/luci'
#echo 'src-git routing https://github.com/coolsnowwolf/routing'
#echo 'src-git helloworld https://github.com/fw876/helloworld.git'
#echo 'src-git oui https://github.com/zhaojh329/oui.git'
#echo 'src-git video https://github.com/openwrt/video.git'
#echo 'src-git targets https://github.com/openwrt/targets.git'
#echo 'src-git oldpackages http://git.openwrt.org/packages.git'
#echo 'src-link custom /usr/src/openwrt/custom-feed'

echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages'
echo 'src-git small https://github.com/kenzok8/small'
} >> feeds.conf.default

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.88/g' package/base-files/files/bin/config_generate

# Clear the login password
# sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings
