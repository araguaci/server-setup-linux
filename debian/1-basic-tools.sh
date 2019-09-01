#!/bin/bash

apt update
apt -y upgrade
apt -y install wget curl nmap whois vim screen git unzip atop htop telnet net-tools dnsutils tmux iftop
curl -Ls https://github.com/serverok/server-setup/raw/master/data/.vimrc > ~/.vimrc
echo "alias ll='ls -la --color'" >> ~/.bashrc
echo "alias rm='rm -i'" >> ~/.bashrc
echo "alias grep='grep --color=auto'" >> ~/.bashrc
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bashrc

systemctl stop apparmor
systemctl disable apparmor

source ~/.bashrc

rm -f /etc/update-motd.d/*
echo > /etc/motd
