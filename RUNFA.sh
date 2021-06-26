#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
Version=`lsb_release -rs | cut -f1 -d"."`
cd $THIS_DIR
install() {
echo -e "\e[38;5;77m    •{ Welcome to install source Faeder }•\e[0m"
echo -e "\e[38;5;77m    •{ Setting up offices }•\e[0m"
echo -e "\e[38;5;77m       •{ install source Faeder [0%]  }•\e[0m"
apt update
apt upgrade
sudo apt-get update
sudo apt-get upgrade
echo -e "\e[38;5;77m       •{ install source Faeder [10%]  }•\e[0m"
sudo apt-get install tmux
sudo apt-get install luarocks
echo -e "\e[38;5;77m       •{ install source Faeder [20%]  }•\e[0m"
sudo apt-get install screen
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
echo -e "\e[38;5;77m       •{ install source Faeder [30%]  }•\e[0m"
if [ "$Version" == "18" ]; then
echo -e "\033[0;31m\n~ Installing Depedencies For Ubuntu 18... \n\033[0m"
cd /lib/x86_64-linux-gnu/ && sudo ln -s libreadline.so.7.0 libreadline.so.6
wget "ibotcorp.com/files/compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb" && sudo dpkg -i compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
rm compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
fi
echo -e "\033[0;31m\n~ Depedencies For Ubuntu 18 has been installed \n\033[0m"
sudo apt-get update
sudo apt-get install
echo -e "\e[38;5;77m       •{ install source Faeder [40%]  }•\e[0m"
sudo apt-get install upstart-sysv
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz;tar zxpf luarocks-2.2.2.tar.gz;cd luarocks-2.2.2 && ./configure
sudo make bootstrap
echo -e "\e[38;5;77m       •{ install source Faeder [50%]  }•\e[0m"
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install redis-lua
sudo luarocks install lua-term
echo -e "\e[38;5;77m       •{ install source Faeder [60%]  }•\e[0m"
sudo luarocks install serpent
sudo luarocks install dkjson
sudo luarocks install Lua-cURL
sudo luarocks install luautf8
echo -e "\e[38;5;77m       •{ install source Faeder [70%]  }•\e[0m"
sudo service redis-server start
sudo apt-get install libconfig++9v5 -y 
sudo apt-get install libstdc++6 -y
echo -e "\e[38;5;77m       •{ install source Faeder [80%]  }•\e[0m"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y 
sudo apt-get install lua-lgi -y  
sudo apt-get install software-properties-common -y
echo -e "\e[38;5;77m       •{ install source Faeder [90%]  }•\e[0m"
sudo apt-get install libnotify-dev -y 
sudo apt-get install lua-space -y
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev -y
echo -e "\e[38;5;77m       •{ install source Faeder [100%]  }•\e[0m"
sudo apt-get update 
sudo apt-get upgrade -y
echo -e "\e[38;5;77m       •{ •{ Join the Source Channel : @Faeder_Ch }• }•\e[0m"

echo -e "\e[38;5;77m       _ _    _   _ \e[0m"
echo -e "\e[38;5;77m       |  _/ \  | |  _ \| |  _ \\e[0m"
echo -e "\e[38;5;77m       | |_ / _ \ |  _| | | | |  _| | |_) |\e[0m"
echo -e "\e[38;5;77m       |  _/ _ \| |_| |_| | |_|  _ <\e[0m"
echo -e "\e[38;5;77m       |_|/_/   \_\_|/|_|_| \_\\e[0m"

echo -e "\e[38;5;77m       •{ Faeder source has been installed }•\e[0m"
echo -e "\e[38;5;77m       •{ Source developer : @KKKKF }•\e[0m"
cd ..
rm -rf luarocks*
cd && cd $THIS_DIR
chmod +x ./FA
sudo sh FA
}
if [ "$1" = "install" ]; then
install
else
if [ ! -f ./tg ]; then
echo "Tg Is Not Found"
exit 1
fi
cd && cd $THIS_DIR
chmod +x ./FA
sudo sh FA
fi