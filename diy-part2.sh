#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.168/g' package/base-files/files/bin/config_generate
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/x86/Makefile
#sed -i 's/hd0,gpt1/hd1,gpt1/g' target/linux/x86/image/grub-efi.cfg

# 删除一些不需要的lean配置【默认软件源和默认密码】
sed -i '33d;34d' package/lean/default-settings/files/zzz-default-settings
# 修改默认密码为root【需要删除lean的配置文件里的设置或直接修改配置文件】
#sed -i 's/root::0:0:99999:7:::/root:$1$rq6132gg$G0rIIMm.BvYx9Fm8b4ES4\/:0:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$rq6132gg$G0rIIMm.BvYx9Fm8b4ES4\/:0:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings

# 添加openwrt.cc软件源
sed -i '$i echo "src/gz openwrt_cc_base https://openwrt.cc/snapshots/packages/x86_64/base\nsrc/gz openwrt_cc_luci https://openwrt.cc/snapshots/packages/x86_64/luci\nsrc/gz openwrt_cc_packages https://openwrt.cc/snapshots/packages/x86_64/packages\nsrc/gz openwrt_cc_routing https://openwrt.cc/snapshots/packages/x86_64/routing\nsrc/gz openwrt_cc_telephony https://openwrt.cc/snapshots/packages/x86_64/telephony">>/etc/opkg/customfeeds.conf' package/lean/default-settings/files/zzz-default-settings
# samba设置,启用root账号默认密码为root【失败】
#sed -i '$i sed -i "s/invalid users/#invalid users/g" /etc/samba/smb.conf' package/lean/default-settings/files/zzz-default-settings
#sed -i '$i echo "root:0:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX:329153F560EB329C0E1DEEA55E88A1E9:[U          ]:LCT-00000001:">>/etc/smaba/smbpasswd' package/lean/default-settings/files/zzz-default-settings

# 一些包冲突
#rm -rf feeds/kenzo/filebrowser
#rm -rf feeds/kenzo/luci-app-filebrowser

