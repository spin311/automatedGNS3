export DEBIAN_FRONTEND=noninteractive

echo "updating"
apt-get update -y

echo "upgrading"
apt-get upgrade -y

echo "installing  xfce GUI"
apt-get install -y xfce4

echo "installing gns3"
add-apt-repository ppa:gns3/ppa -y
apt-get install gns3-gui gns3-server  -y

echo "installing firefox"
apt-get install firefox -y 

echo "installing vncserver"
apt-get install tightvncserver -y

usermod -aG ubridge vagrant
ufw allow 5900
echo "finished downloading, login and then reboot"
echo "username: vagrant"
echo "password: vagrant"
