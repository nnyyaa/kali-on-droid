#!$PREFIX/bin/bash
echo -e "\033[34m 作者:wspbh github地址:www.github.com/wspbh
该脚本需下载近1.7G的文件
确保你的网络正常，记得关流量XD否则安装失败不怪我
还有我的qq:1769481479\033[0m"
read -p '按回车以开始安装'
read -n1 -p "你想将源改为bfsu国内源吗?(推荐更改)   [输Y以更改/任意键不更改]?" answer
case $answer in
Y | y)
      sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.bfsu.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list;;
*)
      echo '不换源';;
esac

apt update && apt upgrade
apt install wget curl unzip tar git aria2 -y
cd ~
aria2c https://images.kali.org/nethunter/kalifs-arm64-full.tar.xz
mv ~/kali-on-phone/install-nethunter-termux ~
chmod +x install-nethunter-termux
echo '接下来一路回车就行啦!3秒后开始!'
sleep 3
./install-nethunter-termux
cd ~
if [ ! -d kali-arm64 ];then

	   echo -e '\033[31m 安装失败,可能是因为网络问题?\033[0m'
	   read -p '按任意键退出'
           exit 1

fi


echo '完成！\n 查看这里以获得启动帮助:https://wspbh.github.io/img/nh-help:https://wspbh.github.io/img/nh-help.jpg'
echo '十分感谢国光大佬的整理!'
