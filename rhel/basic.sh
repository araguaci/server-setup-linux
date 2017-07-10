#!/bin/bash

yum update -y
yum upgrade -y
yum -y remove mlocate
yum install -y nmap lynx wget curl telnet whois bind-utils net-tools
yum install -y atop iotop
yum install -y git vim tmux
yum install -y strace sysstat lsof
yum install -y ncurses-devel automake autoconf gcc gmake patch make
yum install -y libcpp libgcc libstdc++ gcc4 gcc4-c++ gcc4-gfortran
yum install -y dos2unix libtool gcc-c++ gcc-c++ compat-gcc-32 compat-gcc-32-c++