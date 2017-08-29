---
layout: post
title: 在Github Pages上发布博客
date: 2017-08-28 00:00:00 +0800
categories: Jekyll
permalink: /jekyll/jekyll_post_github
---

# 注册Github帐号

    [https://www.github.com](https://www.github.com)

# 添加ssh公钥（建议）

登录Github，点击右上角的个人头像，选择Your profile - Edit profile - SSH and GPG keys，打开SSH与GPG公钥管理页面。

在MSYS2终端中输入

    ssh-keygen

默认设置即可（连续按三次Enter），输入
    
    cat ~/.ssh/id_rsa.pub

将终端输出的信息复制（在MSYS2中用右键菜单复制），在SSH与GPG公钥管理页面中点击New ssh key，将刚才复制的信息粘贴至Key中，点击Add ssh key即可。

# Fork主题并克隆至本地
在[http://jekyllthemes.org/](http://jekyllthemes.org/)中点选一个主题，选择Homepage，进入项目的Github主页，点击右上角的Fork，将该项目复制至自己的Github项目中。

选择 use ssh 克隆自己的项目至本地。

# 修改博客基本信息

在VS Code中打开项目文件夹，修改_config.yml，添加以下两行（注意修改，yourname为你的github昵称，yourblogname为你的博客项目名称）

    url: "https://yourname.github.io"
    baseurl: "/yourblogname"

修改其他信息（在行首添加 # 可以注释该行，即该行不生效），运行jekyll服务器查看效果（--baseurl=  指定运行时baseurl为本地根目录，方便测试）。

    jekyll serve --baseurl= --watch

# 用Git管理修改

保存所有文件，在终端中输入

    git add .
    git commit -m "自己写的注释"

首次使用git commit前还需配置

    git config --global user.name="yourname"
    git config --global user.email="youremail@email.com"

# 发布至Github

在终端中输入
    
    git push

将项目同步至Github，打开Github中的项目主页，选择Settings，搜索 GitHub Pages，在Source的下拉框中选择master branch，点击Save。Github将运行Jekyll引擎生成博客，博客地址即为 
    
    https://yourname.github.io/yourblogname

此后每次修改完成后只需在终端中进行以下三步：

    git add .
    git commit -m "自己写的注释"
    git push