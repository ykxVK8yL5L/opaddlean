#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#git clone https://github.com/kenzok8/openwrt-packages.git  package/openwrt-packages
#git clone https://github.com/kenzok8/small.git  package/openwrt-small
#git clone https://github.com/ykxVK8yL5L/mypg.git package/mypg

#git clone --depth=1 https://github.com/project-openwrt/openwrt-gowebdav

#Pikpak
svn co https://github.com/ykxVK8yL5L/pikpak-webdav/trunk/openwrt ./luci-app-pikpak-webdav

#Alist
svn co https://github.com/sbwml/openwrt-alist/trunk ./luci-app-alist
mv ./luci-app-alist/luci-app-alist/po/zh_Hans ./luci-app-alist/luci-app-alist/po/zh-cn
