#/data/data/com.termux/files/usr/bin/bash
echo '作者:wspbh github地址:www.github.com/wspbh'
echo '推荐改为国内源后再进行安装'
echo '该脚本需下载近1.7G的文件'
echo '确保你的网络正常，记得关流量XD'
echo '否则安装失败不怪我'
echo '5秒后开始'
sleep 5
apt update && apt upgrade
cd ~
pkg install wget curl unzip tar git -y
echo -e '\033[31m 说起来你可能不信，aria2不配置甚至没有wget快\033[0m'
git clone https://hub.fastgit.xyz/wspbh/kali-on-phone.git
cd ~
wget https://images.kali.org/nethunter/kalifs-arm64-full.tar.xz
mv ~/kali-on-phone/install-nethunter-termux ~
chmod +x install-nethunter-termux
./install-nethunter-termux
cd ~
if [ ! -d kali-arm64 ];then

	   echo -e '\033[31m 安装失败,可能是因为网络问题?\033[0m'
	   read -p '按任意键退出
           exit 1
fi

echo '完成！'
echo '你有了自己的kali'
echo '我的qq:1769481479'
echo '我的github:www.github.com/wspbh'
echo '该项目地址:www.github.com/wspbh/kali-on-phone'
echo '使用方法就自己百度吧'
