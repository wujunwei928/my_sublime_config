#!/usr/bin/env bash

# 安装编译环境
sudo apt-get install build-essential   #这个安装玩搜狗输入法之后，应该就已经安装了
sudo apt-get install libgtk2.0-dev     # 这个一定要安装， 否则下面的c文件编译不成功

# 
gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC
sudo mv libsublime-imfix.so /opt/sublime_text/

# fix sublime command line
# 在命令行使用subl命令打开文件的时候, 可以输入中文
sudo sed -i 's/exec \/opt\/sublime_text\/sublime_text "$@"/LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text "$@"/g' /usr/bin/subl

# fix sublime desktop
# 点击桌面的sublime图标编辑文件的时候, 可以输入中文
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text \%F/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text \%F"/g' /usr/share/applications/sublime_text.desktop
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text -n/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text -n"/g' /usr/share/applications/sublime_text.desktop
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text --command new_file/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text --command new_file"/g' /usr/share/applications/sublime_text.desktop