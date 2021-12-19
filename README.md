# automatedGNS3
Deployment and usage of GNS3 using a Virtual Machine.

###### **Instructions:**
1. Download Vagrant (Version >= 2.0.0)
2. Open Vagrant folder in terminal
```Shell
cd automatedGNS3/Vagrant
vagrant up
```
3. type in terminal:
```Shell 
vagrant up 
```
4. wait for everything to finish downloading (first boot takes about 10 minutes)
5. login:
username: vagrant
password: vagrant
6. type in termninal (in VirtualMachine):
```Shell 
reboot
```
7. use password listed above
8. open gns3 (ctrl + alt + t to open terminal, then type gns3) / alternative: click Activities -> Show Applications -> type in gns3

## Bugfixes and problems
First boot may take some time to load, give it some time. Make sure to reboot after loging in.
Most problems can be fixed with rebooting. If it doesn't work, destroy the VM and download it again using:
```Shell 
vagrant destroy
```
and then
```Shell 
vagrant up 
```

## Problems encountered thru the project

The biggest challenge was learning the Vagrantfile (ruby) syntax and debugging the problems. I had problems setting up desktop environment and also finding a solution for GNS3 ubridge and innitian install. GNS3 had to download uninteractivly, which showed to be a bigger challenge than i enticipated.
Specifying GNS3-gui and GNS3 server version (2.2.27) caused error on launch because of aps-get, when new version on GNS3 was released. Script therefore now downloads the latest version of GNS3. I could probably work arount that by downloading pip, but that would furtermore slow down deployment, which isn't my intention.


# Solution and Software
![Solution](.\Screenshots\Solution.png?raw=true "Solution")


###### **Ubuntu:**
At first I used ubuntu/xenial64 (16.0) version, but later on i switched to focal64, as its the latest distribution of ubuntu which I am more used to and I think is more stable.


###### **Desktop-GUI:**
![Desktop-GUI](.\Screenshots\Desktop-GUI.png?raw=true "Desktop-GUI")
For desktop environment i first used gnome, but later on switched to xfce4 as it is more lightweight. If I had more time i would probably try to fing an even more lightweight solution for this, as most loadtime is taken by loading xfce4 and all its extensions and programs.
I tried giving xfce4 ``` --no-install-recommends --no-install-suggests ``` flag, but that caused the VirtualMachine to crash during the deployment.

###### **GNS3:**
![GNS3](.\Screenshots\GNS3-wireshark.png?raw=true "GNS3")
GNS3-gui and GNS3 server are downloaded uninteractivly, using apt-get (latest version) as downloading specific version proved to be a headache.
To make it work i had to export debian frontend and set it to uninteractive, download GNS3 repo and then install with -y flag enabled.


###### **Other applications:**
For web browser I used firefox as it is the best web browser.

For VNC i used tightvncserver as I had trouble getting guacamole to work.


