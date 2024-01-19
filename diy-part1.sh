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
#svn co https://github.com/ykxVK8yL5L/pikpak-webdav/trunk/openwrt package/luci-app-pikpak-webdav
#Axum-web
#svn co https://github.com/ykxVK8yL5L/axum-web/trunk/openwrt package/luci-app-axum-web
#luci-app-taskschedule
#svn co https://github.com/ykxVK8yL5L/luci-app-taskschedule/trunk/luci-app-taskschedule package/luci-app-taskschedule
git clone --depth=1 https://github.com/ykxVK8yL5L/luci-app-taskschedule.git taskschedule-packages
cp -rf taskschedule-packages/luci-app-taskschedule package/luci-app-taskschedule
#luci-app-gmediarender
#svn co https://github.com/syb999/openwrt-22.03.5/trunk/package/multimedia/gmediarender package/gmediarender
#svn co https://github.com/syb999/openwrt-22.03.5/trunk/package/multimedia/luci-app-gmediarender package/luci-app-gmediarender

#Alist
#svn co https://github.com/sbwml/openwrt-alist/trunk package/luci-app-alist
git clone --depth=1 https://github.com/sbwml/luci-app-alist.git sbwml-packages
cp -rf sbwml-packages/alist package/alist
cp -rf sbwml-packages/luci-app-alist package/luci-app-alist
mv package/luci-app-alist/po/zh_Hans package/luci-app-alist/po/zh-cn
