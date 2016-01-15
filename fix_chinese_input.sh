#!/usr/bin/env bash

# ��װ���뻷��
sudo apt-get install build-essential   #�����װ���ѹ����뷨֮��Ӧ�þ��Ѿ���װ��
sudo apt-get install libgtk2.0-dev     # ���һ��Ҫ��װ�� ���������c�ļ����벻�ɹ�

# 
gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC
sudo mv libsublime-imfix.so /opt/sublime_text/

# fix sublime command line
# ��������ʹ��subl������ļ���ʱ��, ������������
sudo sed -i 's/exec \/opt\/sublime_text\/sublime_text "$@"/LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text "$@"/g' /usr/bin/subl

# fix sublime desktop
# ��������sublimeͼ��༭�ļ���ʱ��, ������������
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text \%F/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text \%F"/g' /usr/share/applications/sublime_text.desktop
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text -n/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text -n"/g' /usr/share/applications/sublime_text.desktop
sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text --command new_file/Exec=bash -c "LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text --command new_file"/g' /usr/share/applications/sublime_text.desktop