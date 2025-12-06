# temp1

You have to do steps 0+1 if you want to contribute back to Github from the Pi. Otherwise you can just copy the `setup.sh` script to the Pi and run it.

0. ssh
sudo apt install vim
vim .ssh/rowe   # add: [private key]
echo "IdentityFile /home/myuser/.ssh/rowe" > .ssh/config
chmod 600 ~/.ssh/rowe
git clone git@github.com:chrowe/temp1.git

1. Setup git
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
