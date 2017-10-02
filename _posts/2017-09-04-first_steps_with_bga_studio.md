---
layout: post
title: 踏入BGA Studio的第一步
date: 2017-09-04 00:00:00 +0800
categories: bga_studio
permalink: /bga_studio/first_steps_with_bga_studio
---

原文翻译自[http://en.studio.boardgamearena.com/#!doc/First_steps_with_BGA_Studio](http://en.studio.boardgamearena.com/#!doc/First_steps_with_BGA_Studio)

# 连接至BGA Studio #
打开[http://en.studio.boardgamearena.com](http://en.studio.boardgamearena.com),选择你创建的10个账号之一登录。（注：注册时将分配后缀为0~9的10个账号，方便开发者进行测试）

# 检查是否已经正在开发&&是否已被授权 #
在左侧菜单中，你可以查看游戏的开发进程（注，实际页面为[http://en.studio.boardgamearena.com/#!projects](http://en.studio.boardgamearena.com/#!projects)以及哪些游戏已被授权（注：实际页面为[http://en.studio.boardgamearena.com/#!licensing](http://en.studio.boardgamearena.com/#!licensing)。

在这里，你可以：
* 参与一个项目开发
* 开发一个新的项目

如果你发现了一个游戏还没被授权，尝试去获取出版商的授权（参见“如何获取授权”一页）

# 创建一个新的项目 #
大部分的项目相关操作在控制面板/游戏管理的页面中，你可以在此创建一个新的项目。

# 连接至你的SFTP文件夹 #
注册时系统给你发送的邮件中包括：
* SFTP服务器名称
* 你的SFTP账号与密码

使用这些信息登录至SFTP服务器（你可以使用自己喜欢的SFTP客户端，如WinSCP等，参见[File Sync](http://en.studio.boardgamearena.com/#!doc/Tools_and_tips_of_BGA_Studio#File_Sync_on_Windows)）

你的远程home目录下包含三个游戏的示例项目（黑白棋，hearts, gomoku）。如果你已经创建了一个新项目，你的home目录下还包含这个项目的文件夹。

注意：你需要设置为自动同步远程文件夹，手动传输文件将关闭。

# 开始编码！ #
你可以在BGA Studio的Play now菜单中启动一个游戏：
* 找到你的游戏，点击Play now
* 选择最大及最小玩家数
* 点击"Express start"，启动你的游戏。这将只显示一个空白的游戏界面，上面只有一句话 'This is your game interface. You can edit this HTML in your ".tpl" file.' （注：这是你的游戏界面，你可以在.tpl文件中修改这个HTML文件）
* 切回到你的SFTP的home目录并进入游戏目录。编辑game_game.tpl,修改为'Hey, this is my first game!'，然后保存
* 刷新你的浏览器页面，可以看到游戏已经更新。
* 点击'Gear'按钮，在弹出的选项中选择'Express stop'，将会结束游戏并跳转至游戏结束界面。
* 切回至你的游戏目录，进入img目录并更改game_box.png
* 清空浏览器缓存并刷新，可以见到游戏的盒子图片已被更改。

你可以修改架构并开始开发你的游戏了:)

# 提交更改 #

将你的更改提交至BGA Studio的版本控制系统。<s>这将保证你不会丢失你的代码，以及当你需要时可以返回至之前提交的版本。这也帮助BGA Studio跟踪你的进度（在你提交时我们将收到一封邮件）。所以当你的开发有所进展时，就应提交更改版本。<br>
你可以选择自动提交更改。选择"Control Panel / Manage Games / Your games / Commit my modifications"，然后：<br>
输入更改注释（如"My first commit"），然后点击commit按钮。<br>
查看错误日志，它的最后几行应该如下：<br>
Transmitting file data .<br>
Committed revision #revision number#.<br>
HAL says: done.<br>
</s>
注意：该系统暂时不能用。请使用本地git或github进行版本控制。 

# That's All! #
你现在已经知道怎么利用BGA Studio进行开发与测试了。更多信息请参阅[reference documentation for the framework](http://en.studio.boardgamearena.com/#!doc/Studio#BGA_Studio_documentation)