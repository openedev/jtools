jcode

echo 'install apt-get'
sudo apt-get update && apt-get upgrade && apt-get update && sudo apt-get minicom install vim flex bison libsdl2-dev libssl-dev git-email

echo 'copy SSH keys'
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

echo 'clone u-boot-spi'
git clone git://git.denx.de/u-boot-spi.git
cd u-boot-spi
git remote add spi-write ssh://gu-spi@git.denx.de/u-boot-spi.git
git remote add tom git://git.denx.de/u-boot.git
git remote add as ssh://git@bitbucket.amarulasolutions.com:7999/en/u-boot-engicam.git

echo 'install buildman'
HOME=/home/jagan/JSpace/tools
cp /home/jagan/JSpace/tools/buildman .buildman
./tools/buildman/buildman --list-tool-chains
./tools/buildman/buildman --fetch-arch
./tools/buildman/buildman --list-tool-chains

jcode
echo 'install dtc'
git clone git://git.kernel.org/pub/scm/utils/dtc/dtc.git
cd dtc
make
mkdir /home/jagan/JSpace/tools/dtc
make install --prefix=/home/jagan/JSpace/tools/dtc

jcode
echo 'clone u-boot-imx'
git clone git://git.denx.de/u-boot-imx.git

echo 'clone as'
ssh://git@bitbucket.amarulasolutions.com:7999/en/u-boot-engicam.git 

echo 'clone engicam'
git clone https://github.com/engicam-stable/u-boot-eng-2016.07.git
git clone https://github.com/engicam-stable/u-boot-eng-2015.git

echo 'clone linux-next'
git clone git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

echo 'clone l2-mtd'
git clone git://git.infradead.org/l2-mtd.git


