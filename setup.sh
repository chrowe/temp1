# tmux, in case you loose the connection
sudo apt install tmux
tmux

# Node Red instal & setup
bash <(curl -sL https://github.com/node-red/linux-installers/releases/latest/download/update-nodejs-and-nodered-deb)
sudo systemctl enable nodered.service
sudo systemctl start nodered.service
sudo systemctl status nodered.service

hostname -I

sudo raspi-config

lsmod | grep -i w1_
