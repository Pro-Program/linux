echo "This script installs the latest macOS version in KVM"
sudo pacman -S qemu python python-pip git
pip install click request
git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM
sudo bash jumpstart.sh
qemu-img create -f qcow2 MyDisk.qcow2 64G
echo "-drive id=SystemDisk,if=none,file=MyDisk.qcow2 \
    -device ide-hd,bus=sata.4,drive=SystemDisk \ >" basic.sh
echo "Mac Address cannot be configured yet, use this mac address when in basic.sh, DO NOT LOGIN TO APPLE ID YET"
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/:$//'
chmod +x basic.sh
sudo pacman -Syyu
./basic.sh
