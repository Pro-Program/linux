yay -S cloudflare-warp-bin
sudo systemctl start warp-svc
sudo systemctl enable warp-svc
warp-cli register
warp-cli connect
