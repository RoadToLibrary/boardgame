---
layout: post
title: 团队合作编辑博客
date: 2017-08-28 00:00:00 +0800
categories: Jekyll
permalink: /jekyll/jekyll_team
---

施工中

# Fork博客并克隆至本地

参见[3.在Github Pages上发布博客]({{site.baseurl}}/jekyll/jekyll_post_github)

# 更新代码

在终端中输入git remote add 名称 {原项目地址}将原项目添加至远程分支（只需执行一次），如

    git remote add boardgame git@github.com:JTaoZh/boardgame.git

从原项目中获取最新更改（注意名称修改为自己标识的名称）

    git fetch boardgame

合并至本地代码（注意名称修改为自己标识的名称）

    git merge boardgame/master

# 提交更改

参见[3.在Github Pages上发布博客]({{site.baseurl}}/jekyll/jekyll_post_github)将修改后的代码上传至个人项目地址。

在个人项目页面中点击New pull request进入Comparing changes页面

点击Create pull request进入Open pull request页面

添加相应的信息后点击Create pull request

原项目管理者确认无冲突后点击Merge request合并代码，更新博客