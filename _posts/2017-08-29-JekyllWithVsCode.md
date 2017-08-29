---
layout: post
title: 使用Visual Studio Code编辑博客
date: 2017-08-28 00:00:00 +0800
categories: Jekyll
permalink: /jekyll/jekyll_vscode
---

# 下载Visual Studio Code（下文简称VS Code)并安装
> [https://code.visualstudio.com/Download](https://code.visualstudio.com/Download)

# 配置VS Code终端为MSYS2

打开VS Code，选择文件-首选项-设置，搜索terminal，将鼠标分别移至

    "terminal.integrated.shell.windows": 

及

    "terminal.integrated.shellArgs.windows":

旁，点击编辑，右侧将出现对应的设置,修改（注意msys2的路径，本例中msys2的路径为C:\msys64）

    {% highlight bash %}
    {
        "terminal.integrated.shell.windows": "C:\\msys64\\usr\\bin\\bash.exe",
        "terminal.integrated.shellArgs.windows": ["--login","-i"]
    }   {% endhighlight %}

如图
    ![vscode-setting]({{site.baseurl}}/pic/jekyll/vscode-setting.png)

在VS Code中按Ctrl+` (CapLock上边的的键)调出终端（再按一次则为隐藏），终端名称为bash即为配置成功。
    ![vscode-setting-completed]({{site.baseurl}}/pic/jekyll/vscode-setting-completed.png)

# 选择一个jekyll主题并克隆至本地

在[http://jekyllthemes.org/](http://jekyllthemes.org/)中点选一个主题，选择Homepage

![jekyll-theme]({{site.baseurl}}/pic/jekyll/jekyll-theme.png)

选择use https，复制git地址
![github-clone]({{site.baseurl}}/pic/jekyll/github-clone.png)

在VS Code中按Ctrl+` 调出终端，输入

    git clone https://github.com/Simpleyyt/jekyll-theme-next.git

![git-clone-completed]({{site.baseurl}}/pic/jekyll/git-clone-completed.png)

将jekyll主题克隆至本地（clone后的链接为对应的git地址，注意空格，建议在默认位置克隆），本例中博客文件夹位置为
    
    {MSYS2}/home/用户名/{jekyll主题}

# 在VS Code中编辑博客

在VS Code中选择文件-打开文件夹，打开博客文件夹。

按Ctrl+` 调出终端，输入切换至目标文件夹（注意修改文件夹名称为对应的名称）
    {% highlight bash %}cd jekyll-theme-next {% endhighlight %}

（如果是借鉴模板搭建自己的博客，建议执行该步）删除git信息，并重新初始化git信息
    {% highlight bash %}rm .git -rf && git init{% endhighlight %}

运行jekyll服务器并在浏览器打开 [http://127.0.0.1:4000](http://127.0.0.1:4000) 查看，--watch参数使得每次修改保存后都可以刷新网页查看效果
    {% highlight bash %}jekyll serve --watch --baseurl= {% endhighlight %}

在终端按Ctrl+c可以结束jekyll服务器

# 博客编辑基本操作

在 _posts 文件夹下新建文件名 年-月-日-名称.md 的文件（如2017-08-29-firstblog.md），打开该文件，按以下格式输入文件头（红框部分）

![article-head]({{site.baseurl}}/pic/jekyll/article-head.png)

其中layout为布局样式，名称为_posts文件夹下的html文件名，title为该博文的标题，date为发表日期，在该时间之前将不会显示该博文，categories为博文类别（在某些样式下有用）。注意前后都有三条短横线。红框下面即为正文。

## 插入图片

若图片的保存位置（建议在博客的根目录下新建一个文件夹，不保存在其他已存在的文件夹中）为

    {博客根目录}/pic_path/pic.png

在适当的位置插入
<p>
![pic-name]({{site.baseurl}}/pic_path/pic.png)
</p>
注意有英文的!号

## 插入超链接

在适当的位置插入
<p>[web-page-name](http://web.page.url)</p>
注意没有!号