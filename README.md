# temp1

## Install the OS and log in
1. Download OS using Raspberry Pi Imager: https://www.raspberrypi.com/software/
2. Use "Raspberry Pi OS Lite" (no desktop)
3. Use https://connect.raspberrypi.com for remote access
4. Run `sudo apt update && sudo apt upgrade`

## Setup
You have to do steps 0+1 if you want to contribute back to Github from the Pi. Otherwise you can just copy the `setup.sh` script to the Pi and run it.

0. ssh
sudo apt install vim
vim .ssh/rowe   # add: [private key]
echo "IdentityFile /home/myuser/.ssh/rowe" > .ssh/config
chmod 600 ~/.ssh/rowe
git clone git@github.com:chrowe/temp1.git

1. git
```
sudo apt install git
mkdir github && cd github
git clone git@github.com:chrowe/temp1.git

```

2. Run script
```
cd temp1
./setup.sh
```

## 1-wire
Pins: https://pinout.xyz/pinout/3v3_power
* 17 = 3.3 volt [power] (Red)
* 9 = ground [ground] (Black)
* 7 = GPIO4 [signal] (Yellow)
* 4.7K Resistor between power and signal

