sudo apt-get install virt-manager
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo adduser `id -un` libvirt
sudo adduser `id -un` kvm
newgrp libvirt
echo "Virtual Machine Manager has sucessfully been installed with virtualization capabilities if your computer supports it"