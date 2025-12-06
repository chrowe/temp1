# Web server to test things are working
sudo apt install lighttpd -y
sudo chown -R www-data:www-data /var/www/html
sudo usermod -aG www-data $USER
sudo chown -R $USER:www-data /var/www/html
sudo chmod -R 775 /var/www/html
sudo chmod g+s /var/www/html
cp ./index.html /var/www/html/

# tmux, in case you loose the connection
sudo apt install tmux
tmux

# Node Red instal & setup
bash <(curl -sL https://github.com/node-red/linux-installers/releases/latest/download/update-nodejs-and-nodered-deb)
sudo systemctl enable nodered.service
sudo systemctl start nodered.service
sudo systemctl status nodered.service

hostname -I

sudo echo "dtoverlay=w1-gpio" | sudo tee -a /boot/firmware/config.txt

lsmod | grep -i w1_

sudo modprobe w1-gpio
sudo modprobe w1-therm

reboot
