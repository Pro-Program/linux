apt install python3-pip python3-tk virt-viewer git
git clone https://github.com/Pro-Program/VDI
cd ./VDI/
chmod +x requirements.sh
./requirements.sh
cd /etc/xdg/lxsession/LXDE-pi
sudo mv autostart autostart.bak
sudo touch autostart
mkdir -p ~/.config/lxsession/LXDE-pi
cd ~/.config/lxsession/LXDE-pi
mv autostart autostart.bak
echo "@/usr/bin/bash /home/vdi/thinclient" > autostart
cd ~
touch thinclient
echo "cd ~/VDI" >> thinclient
echo "while true" >> thinclient
echo "do" >> thinclient
echo "    /usr/bin/python3 ~/VDI/vdiclient.py" >> thinclient
echo "done" >> thinclient
reboot