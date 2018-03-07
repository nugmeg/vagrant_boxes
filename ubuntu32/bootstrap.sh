# disable ASLR
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

# get necessary packages
apt-get install -y gcc make git python-pip curl
git clone --depth=1 https://github.com/radare/radare2.git ~/radare2

# install radare2
cd ~/radare2
sys/install.sh
cd ~

# install ropper
pip install capstone
pip install filebytes
pip install keystone-engine



