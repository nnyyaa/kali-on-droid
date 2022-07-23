#~/../usr/bash
echo '作者:wspbh github地址:www.github.com/wspbh   gitee地址:www.github.com/sybs'
echo '我会帮你改为bfsu源'
echo '该脚本需下载近1.7G的文件'
echo '确保你的网络正常，记得关流量XD'
echo '否则安装失败不怪我'
echo '5秒后开始'
sleep 5
rm install.sh
termux-setup-storage
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.bfsu.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list &&apt update && apt upgrade
cd ~
pkg install wget curl unzip tar aria2 -y
echo -e "\033[3xm说起来你可能不信，aria2不配置还没wget快\033[0m"  
wget https://images.kali.org/nethunter/kalifs-arm64-full.tar.xz
wget https://hub.fastgit.xyz/wspbh/kali-on-phone/main/install-nethunter-termux
chmod +x install-nethunter-termux
./install-nethunter-termux
cd ~
if [ ! -d kali-arm64 ];then

	   echo '安装失败了,可能是你强制停止或网络问题?'
	   echo '按CTRL+C退出脚本'
           exit 1

fi

echo '完成！'
echo '你有了自己的kali'
echo '我的qq:1769481479'
echo '我的github:www.github.com/wspbh'
echo '该项目地址:www.github.com/wspbh/kali-on-phone'
echo '使用方法就自己百度吧'
