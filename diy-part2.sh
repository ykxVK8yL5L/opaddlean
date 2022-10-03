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
# 修改默认密码为root【失败，默认密码不是空】
#sed -i "s|root::0:0:99999:7:::|root:$1$8pz6InR5$akb\/zWDtsSfL2ZUpm0ep70:19241:0:99999:7:::|g" package/base-files/files/etc/shadow

# 一些包冲突
#rm -rf feeds/kenzo/filebrowser
#rm -rf feeds/kenzo/luci-app-filebrowser

