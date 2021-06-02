---
title: 建立ubuntu的远程桌面
author: '刁文琦'
date: '2021-06-02'
slug: ubuntu-desktop
categories: []
tags: []
---

## 参考资料
https://bbs.huaweicloud.com/blogs/108819

## 具体步骤
1. 安装ubuntu桌面

   ```
   apt-get install ubuntu-desktop
   ```

   

2. 安装完成进入/etc/pam.d目录，修改gdm-autologin及gdm-password,将两个文件中的下面一行**注释掉**。

   ```shell
   auth required pam_succeed_if.so user != root quiet_success
   ```

   

3. 修改/root/.profile，在最后一行的message n之前加上tty -s &&。使之成为

   ```shell
   tty -s && message n || true
   ```

   

4. 远程登录的设置

   ```shell
   apt-get install tightvncserver xrdp
   apt-get install xubuntu-desktop
   echo xfce4-session >~/.xsession
   ```

5. 修改 /etc/xrdp/startwm.sh 文件，在. /etc/X11/Xsession 上边添加 xfce4-session

   

6. 修配置文件 /etc/X11/Xsession，在文件最上面添加 xfce4-session

   

7. 重新启动xrdp服务

   ```shell
   sudo service xrdp restart
   ```

   

8. 使用Windows的mstsc登录

   

9. 安装chrome

   ```shell
   wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
   wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
   ```

   桌面右键 ->Create Launcher -> Name 输入 google 会弹出 谷歌浏览器图标,选中它
   Command 替换为 /usr/bin/google-chrome-stable --no-sandbox

