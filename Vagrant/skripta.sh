export DEBIAN_FRONTEND=noninteractive

echo "updating"
apt-get update -y

echo "upgrading"
apt-get upgrade -y

echo "installing gns3"
add-apt-repository ppa:gns3/ppa -y
apt-get install gns3-gui gns3-server  -y