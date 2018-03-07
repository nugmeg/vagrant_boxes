# disable ASLR
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

# get necessary packages
apt-get install -y gcc gdb make git python-pip curl radare2
pip install ropper

git clone --depth=1 https://github.com/ISSA-NU/buffer_overruns.git /home/vagrant/buffer_overruns
chown -R vagrant:vagrant /home/vagrant/buffer_overruns