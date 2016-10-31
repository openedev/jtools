jcode

sudo echo 'install apt-get'
sudo apt-get update && apt-get upgrade && apt-get update && sudo apt-get minicom install vim flex bison libsdl2-dev libssl-dev git-email

sudo echo 'copy SSH keys'
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 644 ~/.ssh/id_rsa.pub

sudo echo 'clone u-boot-spi'
sudo git clone git://git.denx.de/u-boot-spi.git
cd u-boot-spi
git remote add spi-write ssh://gu-spi@git.denx.de/u-boot-spi.git
git remote add tom git://git.denx.de/u-boot.git
git remote add as ssh://git@bitbucket.amarulasolutions.com:7999/en/u-boot-engicam.git

sudo echo 'install buildman'
HOME=/home/jagan/JSpace/tools
cp /home/jagan/JSpace/tools/buildman .buildman
./tools/buildman/buildman --list-tool-chains
./tools/buildman/buildman --fetch-arch
./tools/buildman/buildman --list-tool-chains

jcode
sudo echo 'install dtc'
sudo git clone git://git.kernel.org/pub/scm/utils/dtc/dtc.git
cd dtc
sudo make
mkdir /home/jagan/JSpace/tools/dtc
sudo make install --prefix=/home/jagan/JSpace/tools/dtc

jcode
sudo echo 'clone u-boot-imx'
sudo git clone git://git.denx.de/u-boot-imx.git

sudo echo 'clone as'
ssh://git@bitbucket.amarulasolutions.com:7999/en/u-boot-engicam.git 

sudo echo 'clone engicam'
sudo git clone https://github.com/engicam-stable/u-boot-eng-2016.07.git
sudo git clone https://github.com/engicam-stable/u-boot-eng-2015.git

sudo echo 'clone linux-next'
sudo git clone git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

sudo echo 'clone l2-mtd'
sudo git clone git://git.infradead.org/l2-mtd.git
