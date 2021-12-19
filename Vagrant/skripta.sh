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
x11vnc -storepasswd vagrant /home/vagrant/.vnc/passwd

cat <<EOF > /etc/systemd/system/x11vnc.service
[Unit]
Description=Start x11vnc at startup
After=multi-user.target

[Service]
User=vagrant
Group=vagrant
Type=simple
ExecStart=/usr/bin/x11vnc -forever -loop -noxdamage -repeat -rfbauth /home/vagrant/.vnc/passwd -rfbport 5900 -shared

Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

echo "finished downloading, login and then reboot"
echo "username: vagrant"
echo "password: vagrant"
