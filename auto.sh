function pause(){
  get_char()
    {
	SAVEDSTTY=`stty -g`
	stty -echo
	stty cbreak
	dd if=/dev/tty bs=1 count=1 2> /dev/null
	stty -raw
	stty echo
	stty $SAVEDSTTY
    }
    echo "Press any key to continue..."
    char=`get_char`
}
function update(){
    echo " " | sudo -S apt-get update #上面看着啥都没有，实际是sudo的密码
}
function open_crack_website(){
    sudo apt-get install libgnome2-bin    #实现下面打开网站的操作
    gnome-open https://zhile.io/2018/08/25/jetbrains-license-server-crack.html #文件下载
    gnome-open https://segmentfault.com/a/1190000021736634    #使用方法
}
################################正文开始#############################
update   #自定义函数
echo -e '\033[44;33m即将下载\033[0m'
cd ~/Downloads
wget https://download.jetbrains.com/cpp/CLion-2019.3.3.tar.gz
echo '下载完成'
sudo tar zxvf CLion-2019.3.3.tar.gz -C /opt
echo '解压完成'
cd /opt/clion-2019.3.3/bin
echo 'cd成功'
. clion.sh
echo 'clion.sh执行完毕,自动打开破解文件下载网站\n'
open_crack_website #自定义函数


