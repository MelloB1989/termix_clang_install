echo -e '\nInstalling will start shortly...'
echo -e '\nDeveloped and managed by MelloB'
echo -e '\n NOTE: PRESS ENTER IF ASKED ANY PROMPT FOR DEFAULT INSTALLATION!'
sleep 2s
pkg update -y && pkg upgrade -y
pkg install figlet wget nano git clang python3 openssh ruby -y
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat
figlet MelloB | lolcat
echo 'Finishing installation....' | lolcat
sleep 2s
cp ~/termux_clang_install/bash.bashrc /data/data/com.termux/files/usr/etc/
termux-reload-settings
cp ~/termux_clang_install/runc $PATH
cp ~/termux_clang_install/update $PATH
chmod +x ~/termux_clang_install/runc
chmod +x ~/termux_clang_install/update
cp ~/termux_clang_install/termux.properties ~/.termux/
cp ~/termux_clang_install/font.ttf ~/.termux/
cp ~/termux_clang_install/colors.properties ~/.termux/

figlet Termux C | lolcat
echo 'Installation is complete...Happy Hacking!'
sleep 2s
exit
