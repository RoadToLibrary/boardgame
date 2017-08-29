#!/bin/bash
sed -i '7i\Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch' /etc/pacman.d/mirrorlist.msys
sed -i '7i\Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch' /etc/pacman.d/mirrorlist.msys

pacman -Syu --noconfirm
pacman -S base-devel msys2-devel libffi-devel libcrypt-devel gmp-devel git ruby openssh --noconfirm

gem update --system --verbose

gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/

gem install jekyll bundle --verbose

echo 'export PATH=$PATH:~/.gem/ruby/`ls ~/.gem/ruby`/bin' >> ~/.bashrc
source ~/.bashrc