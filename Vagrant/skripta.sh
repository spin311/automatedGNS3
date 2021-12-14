export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get upgrade -y
add-apt-repository ppa:gns3/ppa -y
apt-get install gns3-gui gns3-server  -y