# sudo add-apt-repository ppa:rock-core/qt4

sudo apt install git -y
git config --global user.email "2104934038@qq.com"
git config --global credential.helper store
mkdir ~/darkin_blade && cd ~/darkin_blade
git clone https://github.com/aaaatrox/my_rc
rm -f ~/.vimrc && ln ~/darkin_blade/my_rc/vimrc ~/.vimrc
git clone https://github.com/aaaatrox/my_vim
mv my_vim ~/.vim
git clone https://github.com/aaaatrox/powerline.git
mv powerline ~/.config

sudo apt install vim-gtk3 -y
sudo apt install zsh -y
sudo apt install python3-pip -y
python3 -m pip install powerline-status
sudo apt install powerline-gitstatus -y
mkdir ~/trash && cd ~/trash
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

cd ~/trash
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm -f ~/.zshrc && ln ~/darkin_blade/my_rc/zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv zsh-syntax-highlighting ~/.config

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

sudo apt install axel -y
sudo apt install chromium-browser -y
sudo apt install exo-utils -y
sudo apt install exfat-utils -y
sudo apt install pcmanfm -y
sudo apt remove nautilus -y
sudo apt install gnome-tweaks -y
sudo apt install fcitx-mozc -y
sudo apt install gparted baobab -y

sudo apt install npm nodejs -y
sudo npm install -g hexo
cd ~/darkin_blade
git clone https://github.com/darkin-blade/ejs_2

cd ~ && mkdir blog && cd blog
hexo init
npm cache clean --force
sudo npm install
git init && git remote add origin https://github.com/niabie/hexo_source
git fetch && git reset --hard origin/master
cd themes && ln -s ~/darkin_blade/ejs_2 ejs_2

cd ~ && mkdir aaaatrox && cd aaaatrox
hexo init
npm cache clean --force
sudo npm install
git init && git remote add origin https://github.com/aaaatrox/hexo_source
git fetch && git reset --hard origin/master
cd themes && ln -s ~/darkin_blade/ejs_2 ejs_2

sudo apt install ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
