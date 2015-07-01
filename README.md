# my_sublime_config
my sublime text 3 config

### 官方网站:   http://www.sublimetext.com/

### 一: 下载地址

Sublime Text 2 下载地址:  http://www.sublimetext.com/2
Sublime Text 3 下载地址:  http://www.sublimetext.com/3


### 二: 安装最重要的插件 package control

使用快捷键 ctrl + ` 调出sublime text 命令行界面, 输入下列命令, 版本2 和 版本3的安装命令是不一样的

###### 版本2安装package control:
import urllib2,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')

###### 版本3安装package control:
import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

上面的安装命令是 2015-05-14 写下的, 后期可能失效, 如果失效的话, 去package control的官方网站查看最新的安装方法
http://https://packagecontrol.io/installation


### 三: 用 package control安装常用插件

    AdvancedNewFile      快速创建文件
    Alignment           
    Anaconda		     超强python提示插件
    AutoFileName         文件路径提示插件
    ChineseLocalization  汉化插件(支持简体中文,繁体中文,日文)
    ColorPicker          颜色采集器
    ConvertToUTF8        兼容GBK编码
    DocBlockr            生成指定格式的
    Emmet                Zen Coding
    FileDiffs            文件比较
    Git                  git命令
    Github Tools         github工具
    Google Search        在sublime下用google搜索
    jQuery               jQuery代码提示
    JsFormat             js代码格式化
    MarkdownEditing      markdown编辑预览
    Modific              智能显示版本控制工具的文件所做的修改(包括svn,git等, 安装这个插件之前,要先安装git插件)
    Package Control      安装其他插件的插件
    SASS Build           编写CSS的预处理器
    SFTP                 内置的ftp工具
    SideBarEnhancements  侧边栏右键菜单功能扩充, 并且移除了'删除文件夹'选项, 防止误操作删除整个项目
    SublimeLinter        据说是只能提示编码错误的插件, 还没学会怎么用
    SublimeREPL          在编辑器中快速打开各种程序交互截面
    SVN                  svn工具
    SyncedSideBar        打开文件得时候, 侧边栏自动定位到文件所在得文件夹
    Terminal             在Sublime中打开终端, 并定位到 当前文件 或 当前项目目录 所在的位置 



### 四: Sublime Text的快捷键

        4.1:    编辑器自带 快捷键

    打开命令面板：Shift+Ctrl+P
    显示python命令行: Ctrl+`   (安装package control插件的时候, 就是打开的这个输入命令的)

    文件跳转：Ctrl+P 跳转文件（和下面几个组合使用: 文件名#搜索字符串  文件名:跳转行号  文件名@跳转函数名）
    跳到第几行：Ctrl+G
    前往method: Ctrl+R
    跳到单词: Ctrl+;

    新建文件：Ctrl+N
    打开文件 : Ctrl+O (字母O)
    保存文件 : Ctrl+S
    文件另存：Ctrl+Shift+S
    关闭当前文件：Ctrl+W
    重新打开关闭的文件：Shift+Ctrl+T
    关闭所有文件：Ctrl+Shift+W

    关闭目录侧边栏    Ctrl+K+B
    向前切换选项卡    Ctrl+Tab   或者  Ctrl+Page Up
    向后切换选项卡    Ctrl+Shift+Tab  或者  Ctrl+Page Down

    选择行：Ctrl+L
    移动当前行：Ctrl+Shift+Up/Down     ps: 上移/下移当前行
    复制当前行：Ctrl+Shift+D
    剪切当前行：Ctrl+X（Ctrl+Shift+K）  ps: 未选中为剪切光标当前所在行, 选定内容状态下为剪切内容

    Ctrl+D    选中光标位置所在单词 （继续按键则选择下个相同的字符串）
    Ctrl+M    光标移动至括号内开始或结束的位置
    Ctrl+Shift+M    选择括号内的内容（继续按键则选择父括号）
    Alt+F3    选择所有相同的词
    Shift+右键拖动    进入多行编辑模式, 用来更改或插入列内容
    Ctrl+鼠标左键    依次点击或选取，可需要编辑的多个位置
    Ctrl+K+K    从光标处删除至行尾
    Ctrl+K+Backspace    从光标处删除至行首
    Ctrl+Shift+K     删除整行
    Ctrl+Shift+Backspace    删除整行
    Ctrl+Shift+Up    光标所在行与上行互换
    Ctrl+Shift+Down    光标所在行与下行互换
    Ctrl+Shift+D    复制光标所在整行，插入在该行之前
    Ctrl+Enter    在当前行后插入新行
    Ctrl+Shift+Enter    在当前行前插入新行
    Ctrl+Z    撤销
    Ctrl+Y    恢复撤销
    Ctrl+Backspace    删除一个单词：
    Ctrl+K+U    改为大写
    Ctrl+K+L    改为小写
    Ctrl+X    选定内容状态下为剪切内容，未选中为剪切光标当前所在行
    Ctrl+T    光标所在位置左右字符或词互换

    Ctrl+[    减少当前行缩进
    Ctrl+]    增加当前行缩进
    Tab    增加当前行缩进
    Shift+Tab    减少当前行缩进
    Ctrl+Shift+V    粘贴并格式化
    Alt + Ctrl + ]    代码自动对齐
    注释当前行    Ctrl+/
    注释当前位置    Ctrl+Shift+/
    块注释    Ctrl+Alt+/

    全屏    F11
    无干绕全屏    Shift+F11
    分屏    Alt+Shift+数字
    切换分屏    Ctrl+数字
    将当前tab页切换到不同的分屏下    Ctrl+Shift+数字
    切换tab页    Alt+数字

    F6    拼写检查
    F9    行排序
    F12  跳到函数定义的地方 ( Sublime Text 3才有, 省的安装ctags插件了)

    Ctrl+Shift+[ 按照缩进指示折叠光标所在标签对或折叠所选内容
    Ctrl+Shift+] 展开光标所在标签对内容或所选内容
    按 Ctrl + K，然后按 Ctrl + 1，可收起所有函数
    按 Ctrl + K， 再按 Ctrl + J 显示所有函数
    你也可以 Ctrl + K，Ctrl + 2 （这个数字可以变的，表示收起的函数的级数，你试试就明白了）


    设置/删除标记   Ctrl+F2

    当前文件查找    Ctrl+F
    当前文件替换    Ctrl+H
    查找下一个      F3

    查找前一个    Shift+F3   
    在文件夹中批量查找 或 替换    Ctrl+Shift+F


     
     4.2:    一些插件的快捷键
    Super+Alt+N      快速创建文件 ( AdvancedNewFile )
    Ctrl+Alt+Enter   ZenCoding ( Emmet )
    Ctrl+Alt+F          js代码格式化 ( Js Format )
    Ctrl+Alt+K         快捷键管理  ( KeymapManager, 有了这个,即使上面几个插件的快捷键忘了,可以按这个插件的快捷键进去查 )






### 官方参考文档:
http://www.sublimetext.com/docs/3/  
http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/

  
### 其他
https://github.com/jikeytang/sublime-text   
http://vinta.ws/code/must-have-sublime-text-packages.html
