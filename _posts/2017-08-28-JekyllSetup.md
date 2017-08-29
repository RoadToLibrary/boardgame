---
layout: post
title: 配置Jekyll环境
date: 2017-08-28 00:00:00 +0800
categories: Jekyll
permalink: /jekyll/jekyll_setup
---

## 下载MSYS2
32位 
    [https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-i686-latest.exe](https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-i686-latest.exe)

64位 
    [https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-x86_64-latest.exe](https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-x86_64-latest.exe)

## 安装MSYS2

下文将安装位置（如C:\msys64）

![安装路径]({{site.baseurl}}/pic/jekyll/msys-install-path.png)

## 添加MSYS2软件至PATH

右键我的电脑-属性-高级系统设置-高级-环境变量

在系统变量中选择Path，选编辑，在最前方添加
    
    C:\msys64\usr\bin; 

注意路径为MSYS2的安装路径下的usr\bin，最后有分号，不要删除原有的值。

## 下载并安装VS Code
[https://code.visualstudio.com/Download](https://code.visualstudio.com/Download)

#### 在VS Code中启动MSYS2终端

打开VS Code后，按Ctrl+C调出终端窗口，输入
    
    bash --login -i

注：由于在Windows下不能启动MSYS2中的Ruby程序，因此强烈建议在MSYS2终端下操作，即所有文件均保存在C:\msys64下


## 安装jekyll环境
在MSYS2中输入（复制）以下命令

    curl https://raw.githubusercontent.com/RoadToLibrary/jekyll-journal/master/setup_jekyll.sh | bash

#### 配置git用户信息

在MSYS2终端中输入

    git config --global user.name="yourname"
    git config --global user.email="youremail@email.com"

#### 生成ssh公钥

在MSYS2终端中输入

    ssh-keygen -t rsa

敲三次回车（保持默认设置）    

## 注册Github

    [https://www.github.com](https://www.github.com)

#### 上传ssh公钥

登录Github，点击右上角的个人头像，选择Your profile - Edit profile - SSH and GPG keys，点击New ssh key。在MSYS2终端下输入

    cat ~/.ssh/id_rsa.pub

将终端输出的信息复制至刚才页面的Key中，点击Add SSH key

## Fork博客

打开博客的代码仓库地址，如本博客的代码仓库地址为

    https://github.com/roadtolibrary/jekyll-journal

点击右上角的Fork，将该代码仓库复制至个人仓库(以JTaoZh的例)

#### 将博客代码克隆至本地电脑

打开个人仓库的页面（可在Your profile-Repository中找到），点Clone or download，选择use ssh，复制该框内的git地址，在MSYS2终端中输入以下命令（注意git clone 后为所复制的git地址，注意空格），如

    cd ~
    git clone git@github.com:JTaoZh/jekyll-journal.git

完成后在C:\msys64\home\用户名\ 下生成一个boardgame目录，该目录的文件与代码仓库的文件相同。

#### 测试jekyll

切换至博客目录

    cd ~/jekyll-journal/

运行jekyll

    jekyll serve --watch --baseurl= 

在浏览器中打开[http://127.0.0.1:4000](http://127.0.0.1:4000)可以看到jekyll服务器已成功运行

按Ctrl+c结束jekyll

## 跟踪上游分支

#### 设置上游分支

假设上游分支（博客位置）为

    https://github.com/roadtolibrary/jekyll-journal

个人开发分支为主分支的Fork
    
    https://github.com/JTaoZh/jekyll-journal

请保证克隆至本地的是个人开发分支。

在MSYS2终端下输入（upstream-jekyll-journal为示例的上游标识名，可以自行修改，与下文保持一致）

    cd ~/jekyll-journal/
    git remote add upstream-jekyll-journal git@github.com:RoadToLibrary/jekyll-journal.git

#### 跟踪上游变动

获取上游分支的最新更改

    git fetch upstream-jekyll-journal

合并至本地代码

    git merge upstream-jekyll-journal/master

## 修改博客
#### 添加博文

在_posts文件夹下新建.md文件(markdown文件)，文件名与内容格式参见其他博文

#### 记录修改信息

    git add .
    git commit -m "修改注释"
    git push

## 向上游分支提交修改

在Github的个人项目页面上点击New pull request - Create pull request 

添加修改信息（可选），点击 Create pull request

等待上游项目负责人确认无冲突并点击 Merge request 合并代码