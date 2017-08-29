---
layout: post
title: 配置Jekyll环境
date: 2017-08-28 00:00:00 +0800
categories: Jekyll
permalink: /jekyll/jekyll_setup
---

# 下载MSYS2
32位 
    [https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-i686-latest.exe](https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-i686-latest.exe)

64位 
    [https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-x86_64-latest.exe](https://mirrors.tuna.tsinghua.edu.cn/msys2/distrib/msys2-x86_64-latest.exe)

# 安装MSYS2

下文将安装位置（如C:\msys64）记为${MSYS2}
![安装路径]({{site.baseurl}}/pic/jekyll/msys-install-path.png)

# 启动MSYS2，以下操作在MSYS2中进行

![启动msys]({{site.baseurl}}/pic/jekyll/start-msys.png)
    
![msys窗口]({{site.baseurl}}/pic/jekyll/msys-windows.png)

# 使用清华、中科大的MSYS2软件源（可选，加速接下来安装软件的速度）

    
    sed -i '7i\Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch' /etc/pacman.d/mirrorlist.msys
    sed -i '7i\Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch' /etc/pacman.d/mirrorlist.msys

# 安装基础软件

    pacman -Syu --noconfirm
    pacman -S base-devel msys2-devel --noconfirm
    pacman -S libffi-devel libcrypt-devel gmp-devel --noconfirm
    pacman -S git ruby openssh --noconfirm

# 更新RubyGems(可能需时较长，不用着急)
    gem update --system --verbose

更新成功后显示![gem更新完毕]({{site.baseurl}}/pic/jekyll/ruby-update-completed.png)

# 修改RubyGems软件源
    gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
    
修改成功后显示![gem换源]({{site.baseurl}}/pic/jekyll/ruby-change-sources.png)

# 安装jekyll
    gem install jekyll bundle --verbose

# 将jekyll(及其他ruby程序)添加至MSYS2路径
    {% highlight bash %}
echo 'export PATH=$PATH:~/.gem/ruby/2.3.0/bin' > .bashrc
source .bashrc {% endhighlight %}

# 测试jekyll
创建blog文件夹
    
    jekyll new blog

其中blog为文件夹的名称，可以自己修改
![jekyll-new-blog-msys]({{site.baseurl}}/pic/jekyll/jekyll-new-blog-msys.png)

创建完成后，在${MSYS2}/home/{用户名}下生成一个blog文件夹
    ![jekyll-new-blog-windows]({{site.baseurl}}/pic/jekyll/jekyll-new-blog.png)

切换至blog目录
    {% highlight bash %}cd blog/ {% endhighlight %}

运行jekyll服务器
    
    jekyll serve --watch --baseurl= 
    
![jekyll-serve]({{site.baseurl}}/pic/jekyll/jekyll-serve.png)

在浏览器中打开[http://127.0.0.1:4000](http://127.0.0.1:4000)可以看到jekyll服务器已成功运行
        
![jekyll-web]({{site.baseurl}}/pic/jekyll/jekyll-web.png)

在MSYS2中按Ctrl+c结束jekyll
