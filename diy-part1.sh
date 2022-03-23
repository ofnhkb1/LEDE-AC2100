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


#Add Custom Feeds
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

#修正easymesh无限重启
#sed -i '/routing/d' feeds.conf.default
#src-git routing https://git.openwrt.org/feed/routing.git^a7b79a1d4fce4f443854115ee4b2ed2aafba5c06


mkdir -p package/custom
cd package/custom
git clone --depth=1 https://github.com/openwrt-develop/luci-theme-atmaterial
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns
git clone --depth=1 -b 18.06  https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/vernesong/OpenClash
git clone --depth=1 https://github.com/Lienol/openwrt-package
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small


git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/rosywrt/luci-theme-rosy.git
git clone --depth=1 https://github.com/sypopo/luci-theme-argon-mc.git
git clone --depth=1 https://github.com/apollo-ng/luci-theme-darkmatter.git
