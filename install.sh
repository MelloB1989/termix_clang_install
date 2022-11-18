echo 'Installing will start shortly...'
echo 'Developed and managed by MelloB'
sleep 2s
pkg update && pkg upgrade -y
pkg install figlet wget nano git clang openssh ruby -y
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat
figlet MelloB | lolcat
echo 'Finishing installation....' | lolcat
sleep 2s
cp bash.bashrc /data/data/com.termux/files/
termux-reload-settings
cp runc $PATH
cp update $PATH
cp termux.properties ~/.termux/
cp font.ttf ~/.termux/
cp color.properties ~/.termux/

figlet Termux C | lolcat
echo 'Installation is complete...Happy Hacking!'
exit
