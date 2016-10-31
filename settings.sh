## jspace path
JPATH=/home/jagan/JSpace
sudo alias jspace='cd ${JPATH}'

## jtools path
JTOOLS=${JPATH}/tools
sudo alias jtools='cd ${JTOOLS}'

## jsrc path
JSRC=${JPATH}/code
sudo alias jcode='cd ${JSRC}'

## PS1 custom
sudo source ${JTOOLS}/ps1_custom

## git sudo alias
sudo source ${JTOOLS}/git_sudo alias

## u-boot sudo alias
sudo source ${JTOOLS}/u-boot.sudo alias

## dtc
export PATH=${JTOOLS}/dtc/bin:$PATH

## buildman
sudo alias bman='HOME=/home/jagan/JSpace/tools; ./tools/buildman/buildman'
sudo alias bmanc='HOME=/home/jagan/JSpace/tools; ./tools/buildman/buildman --list-tool-chains'

## linux make sudo alias
sudo alias mlconfig='make ARCH=arm imx_v6_v7_defconfig; make ARCH=arm menuconfig'
sudo alias mlzconfig='make ARCH=arm menuconfig; make ARCH=arm menuconfig'
sudo alias mmrpr='make mrproper'
sudo alias mbuild='make ARCH=arm -j 16'

## vpn
sudo alias vpn='openvpn /etc/openvpn/jagan/amarula_main.conf'

## misc
sudo alias mw='dd if=SPL of=/dev/mmcblk0 bs=1k seek=1; sync; dd if=u-boot-dtb.img of=/dev/mmcblk0 bs=1k seek=69; sync'
sudo alias ummc='umount /dev/mmcblk0p1 /dev/mmcblk0p2'
JR="Reviewed-by: Jagan Teki <jagan@openedev.com>"
sudo alias review='echo $JR'
JT="Tested-by: Jagan Teki <jagan@openedev.com>"
sudo alias test='echo $JT'

## jsettings
JSCRIPT=/home/jagan/JSpace/tools/settings.sh
sudo alias jsettings='sudo source ${JSCRIPT}'
