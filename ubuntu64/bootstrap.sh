# disable ASLR
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

# get necessary packages
apt-get install -y gcc gdb make git python-pip curl radare2 nasm vim
pip install ropper

# install victim scripts
rm -rf /home/vagrant/buffer_overruns
git clone --depth=1 https://github.com/nugmeg/buffer_overruns.git /home/vagrant/buffer_overruns
chown -R vagrant:vagrant /home/vagrant/buffer_overruns

# gear up vim
git clone --depth=1 https://github.com/amix/vimrc.git /home/vagrant/.vim_runtime
sh /home/vagrant/.vim_runtime/install_awesome_vimrc.sh

# gear up gdb
git clone https://github.com/longld/peda.git /home/vagrant/peda
echo "source /home/vagrant/peda/peda.py" >> /home/vagrant/.gdbinit
