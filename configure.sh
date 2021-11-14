#!/bin/bash


# TODO: make this script idempotent!
# TODO: migrate all this to ansible


echo "Configure : begin"


# timezone
echo "Setting timezone..."
timedatectl set-timezone Australia/Sydney


# bash profile
echo "Configuring bash profile..."
echo "alias ls='ls -lha'" >> ~/.bashrc
source ~/.bashrc


# patch
echo "Patching..."
apt update && apt dist-upgrade -y


# packages
echo "Installing packages..."
apt update && apt install -y \
    wget \
    htop \
    traceroute


# dark theme
echo "Installing dark UI theme..."
bash <(curl -s https://raw.githubusercontent.com/Weilbyte/PVEDiscordDark/master/PVEDiscordDark.sh ) install


# done - reboot
echo "Setup complete - rebooting - you can access the console at https://$(hostname -I):8006/"
echo "Configure : script complete!"
reboot
