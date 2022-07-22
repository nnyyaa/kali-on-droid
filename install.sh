#~/../usr/bash
echo '作者:wspbh github地址:www.github.com/wspbh 项目地址:www.github.com/wspbh/kali-on phone'
echo '请将软件源改为国内后在继续'
echo '请注意'
echo '你最好使用梯子'
echo '该脚本需从外网下载将近2G的文件'
echo '否则极有可能会失败，或者要安装很长时间'
echo '5秒后开始'
sleep 5
termux-setup-storage
sleep 2
pkg install wget curl unzip tar -y
wget -O install-nethunter-termux https://offs.ec/2MceZWr
chmod +x install-nethunter-termux 
./install-nethunter-termux
cd ~
if [ ! -d kali-arm64 ];then

	   echo '安装失败了,可能是你强制停止或网络问题?'
	   echo '按CTRL+C退出脚本'
           sleep 99999999

fi

echo '完成！'
echo '你有了自己的kali'
echo '我的github:www.github.com/wspbh'
echo '该项目地址:www.github.com/wspbh/kali-on-phone'
echo '使用方法就自己百度吧'
