# disable ASLR
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

# get necessary packages
apt-get install -y gcc make git python-pip curl radare2
pip install ropper
