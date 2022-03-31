echo "This installs a Mac KVM where the directory this script is"
sudo apt update
sudo apt-get install qemu python python-pip git
pip install click request
git clone https://github.com/Pro-Program/macOS-Simple-KVM.git
cd macOS-Simple-KVM
sudo bash jumpstart.sh
qemu-img create -f qcow2 MyDisk.qcow2 64G
echo "Mac Address cannot be configured yet, use this mac address when in basic.sh, DO NOT LOG INTO YOUR APPLE ID YET!"
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/:$//'
chmod +x basic.sh
./basic.sh