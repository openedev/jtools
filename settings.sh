## jspace path
JPATH=~/JSpace
alias jspace='cd ${JPATH}'

## jtools path
JTOOLS=${JPATH}/tools
alias jtools='cd ${JTOOLS}'

## jsrc path
mdir ${JPATH}/code
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
alias bman='./tools/buildman/buildman'
alias bmanc='./tools/buildman/buildman --list-tool-chains'

## cross tool
cd ${JTOOLS}
mkdir xtool
cd xtool
echo 'exporting arm-linux-gnueabi-'
wget https://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/arm-linux-gnueabi/gcc-linaro-6.3.1-2017.02-i686_arm-linux-gnueabi.tar.xz
tar xvf gcc-linaro-6.3.1-2017.02-i686_arm-linux-gnueabi.tar.xz
export PATH=${JTOOLS}/xtool/gcc-linaro-6.3.1-2017.02-i686_arm-linux-gnueabi/bin:$PATH
alias exp_arm='export CROSS_COMPILE=arm-linux-gnueabi-'

echo 'exporting aarch64-linux-gnu-'
wget https://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/aarch64-linux-gnu/gcc-linaro-6.3.1-2017.02-i686_aarch64-linux-gnu.tar.xz
wget xvf gcc-linaro-6.3.1-2017.02-i686_aarch64-linux-gnu.tar.xz
export PATH=${JTOOLS}/xtool/gcc-linaro-6.3.1-2017.02-i686_aarch64-linux-gnu/bin:$PATH
alias exp_aarch64='export CROSS_COMPILE=aarch64-linux-gnu-'

## linux make alias
alias mlconfig='make ARCH=arm imx_v6_v7_defconfig; make ARCH=arm menuconfig'
alias mlzconfig='make ARCH=arm menuconfig; make ARCH=arm menuconfig'
alias mmrpr='make mrproper'
alias mbuild='make ARCH=arm -j 16'

## vpn
alias vpn='sudo openvpn /etc/openvpn/jagan/amarula_main.conf'
alias micene='ssh jagan@micene.amarulasolutions.com'

## misc
alias mw='sudo dd if=SPL of=/dev/sda bs=1k seek=1; sudo sync;sudo dd if=u-boot-dtb.img of=/dev/sda bs=1k seek=69;sudo sync'
alias ummc='sudo umount /dev/sda1 /dev/sda2'
JR="Reviewed-by: Jagan Teki <jagan@openedev.com>"
alias review='echo $JR'
JT="Tested-by: Jagan Teki <jagan@openedev.com>"
alias test='echo $JT'

## jsettings
JSCRIPT=~/JSpace/tools/settings.sh
alias jsettings='source ${JSCRIPT}'
