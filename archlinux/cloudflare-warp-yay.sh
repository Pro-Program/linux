sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S cloudflare-warp-bin
sudo systemctl start warp-svc
sudo systemctl enable warp-svc
warp-cli register
warp-cli connect
