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
alias bman='HOME=/home/jagan/JSpace/tools; ./tools/buildman/buildman'
alias bmanc='HOME=/home/jagan/JSpace/tools; ./tools/buildman/buildman --list-tool-chains'

## linux make alias
alias mlconfig='make ARCH=arm imx_v6_v7_defconfig; make ARCH=arm menuconfig'
alias mlzconfig='make ARCH=arm menuconfig; make ARCH=arm menuconfig'
alias mmrpr='make mrproper'
alias mbuild='make ARCH=arm -j 16'

## vpn
alias vpn='openvpn /etc/openvpn/jagan/amarula_main.conf'

## misc
alias mw='dd if=SPL of=/dev/mmcblk0 bs=1k seek=1; sync; dd if=u-boot-dtb.img of=/dev/mmcblk0 bs=1k seek=69; sync'
alias ummc='umount /dev/mmcblk0p1 /dev/mmcblk0p2'
JR="Reviewed-by: Jagan Teki <jagan@openedev.com>"
alias review='echo $JR'
JT="Tested-by: Jagan Teki <jagan@openedev.com>"
alias test='echo $JT'

## jsettings
JSCRIPT=/home/jagan/JSpace/tools/settings.sh
alias jsettings='source ${JSCRIPT}'
