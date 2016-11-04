## jspace path
JPATH=/home/jagan/JSpace
alias jspace='cd ${JPATH}'

## jtools path
JTOOLS=${JPATH}/tools
alias jtools='cd ${JTOOLS}'

## jsrc path
JSRC=${JPATH}/code
alias jcode='cd ${JSRC}'

## PS1 custom
source ${JTOOLS}/ps1_custom

## git alias
source ${JTOOLS}/git_alias

## u-boot alias
source ${JTOOLS}/u-boot.alias

## dtc
export PATH=${JTOOLS}/dtc/bin:$PATH

## buildman
alias bman='HOME=/home/jagan/JSpace/tools; sudo ./tools/buildman/buildman'
alias bmanc='HOME=/home/jagan/JSpace/tools; ./tools/buildman/buildman --list-tool-chains'

## cross tool
export PATH=${JTOOLS}/.buildman-toolchains/gcc-4.9.0-nolibc/arm-unknown-linux-gnueabi/bin:$PATH
export CROSS_COMPILE=arm-unknown-linux-gnueabi-

## linux make alias
alias mlconfig='make ARCH=arm imx_v6_v7_defconfig; make ARCH=arm menuconfig'
alias mlzconfig='make ARCH=arm menuconfig; make ARCH=arm menuconfig'
alias mmrpr='make mrproper'
alias mbuild='make ARCH=arm -j 16'

## vpn
alias vpn='sudo openvpn /etc/openvpn/jagan/amarula_main.conf'

## misc
alias mw='sudo dd if=SPL of=/dev/sda bs=1k seek=1; sudo sync;sudo dd if=u-boot-dtb.img of=/dev/sda bs=1k seek=69;sudo sync'
alias ummc='sudo umount /dev/sda1 /dev/sda2'
JR="Reviewed-by: Jagan Teki <jagan@openedev.com>"
alias review='echo $JR'
JT="Tested-by: Jagan Teki <jagan@openedev.com>"
alias test='echo $JT'

## jsettings
JSCRIPT=/home/jagan/JSpace/tools/settings.sh
alias jsettings='source ${JSCRIPT}'
