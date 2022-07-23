#~/../usr/bash
echo '作者:wspbh github地址:www.github.com/wspbh   gitee地址:www.github.com/sybs'
echo '推荐改为国内源后再进行安装'
echo '该脚本需下载近1.7G的文件'
echo '确保你的网络正常，记得关流量XD'
echo '否则安装失败不怪我'
echo '5秒后开始'
sleep 5
rm install.sh
termux-setup-storage
apt update && apt upgrade
cd ~
pkg install wget curl unzip tar git -y
echo -e "\033[3xm说起来你可能不信，aria2不配置还没wget快\033[0m"
wget https://images.kali.org/nethunter/kalifs-arm64-full.tar.xz
git clone https://hub.fastgit.xyz/wspbh/kali-on-phone.git
chmod +x install-nethunter-termux
./install-nethunter-termux
cd ~
if [ ! -d kali-arm64 ];then

	   echo '安装失败了,可能是你强制停止或网络问题?'
	   echo '按回车退出脚本'
           exit 1

fi

echo '完成！'
echo '你有了自己的kali'
echo '我的qq:1769481479'
echo '我的github:www.github.com/wspbh'
echo '该项目地址:www.github.com/wspbh/kali-on-phone'
echo '使用方法就自己百度吧'
