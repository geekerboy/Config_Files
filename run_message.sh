#实现按任意键继续执行
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
#更新下载库
function update(){
    echo " " | sudo -S apt-get update #上面看着啥都没有，实际是sudo的密码
}
#打开特定网站
function open_crack_website(){
    sudo apt-get install libgnome2-bin    #实现下面打开网站的操作
    gnome-open https://zhile.io/2018/08/25/jetbrains-license-server-crack.html #文件下载
    gnome-open https://segmentfault.com/a/1190000021736634    #使用方法
}
#出错，查看teminal信息
function if_error(){
#运行成功返回0，失败返回1
    result=$?
    if [ $result  -eq 0 ];then
   	echo 'Congratulations,某部分执行通过'
    else
	gxmessage -center \
          -buttons "Amd Yes":1,"Trump No":2 \
          -geometry 400x200 \
          -title "运行出错提示" '执行出错，查看teminal信息'
	exit 
    fi
}
################################正文开始#############################
#update   #自定义函数
echo -e '\033[37m脚本即将开始执行'
${@:1}
if_error
echo '脚本执行结束'




