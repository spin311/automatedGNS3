export DEBIAN_FRONTEND=noninteractive

echo "updating"
apt-get update -y

echo "upgrading"
apt-get upgrade -y

echo "installing  xfce GUI"
apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

echo "installing gns3"
add-apt-repository ppa:gns3/ppa -y
apt-get install gns3-gui=2.2.27 gns3-server=2.2.27  -y

echo "installing firefox"
apt-get install firefox -y

echo "installing vncserver"
apt-get install tightvncserver -y

echo "finished downloading, login and then reboot"
echo "username: vagrant"
echo "password: vagrant"
