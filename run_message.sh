#!/bin/bash
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
if_error(){
#运行成功返回0，失败返回1
    result=$?
    if [ $result  -eq 0 ];then
	gxmessage -center \
          -buttons "Amd Yes":1,"Trump No":2 \
          -geometry 400x200 \
          -title "运行成功提示" "Congratulations,命令执行$counter次通过"
    else
	gxmessage -center \
          -buttons "Amd Yes":1,"Trump No":2 \
          -geometry 400x200 \
          -title "运行出错提示" "执行$counter次仍未通过，查看teminal报错信息"
	exit 
    fi
}
param_processing(){
    if [ $1 -eq 0 ];then
	    echo -e "\033[32m------判断模式------ \033[0m"　
	    echo '123456'
            $input_param2
            if_error      #函数嵌套调用需要和判断语句齐平书写，否则报错
    	elif [ $1 -eq 1 ];then
	    echo -e "\033[32m--------------循环执行模式-------------- \033[0m"
	    echo -e "\033[32m----------------第1次执行----------------\033[0m"
    	    $input_param3 #执行命令行输入的真正语句　
	    while [ $? != 0 -a $input_param2 -gt $counter ]
	    do
		((counter++))
		echo -e "\033[32m----------------第$counter次执行----------------\033[0m"
		$input_param3
	    done
    if_error
    fi
}
function message_box(){
    gxmessage -center \
          -buttons "Amd Yes":1,"Trump No":2 \
          -geometry 400x200 \
          -title "Message Notes" " ${@:1}"
}

################################正文开始#############################
#使用说明
#1.只检查代码是否执行成功模式
#    文件运行时加两个参数，第一是０，第二个为需要执行的代码
#2.循环执行代码模式
#    文件运行时三个参数，第一个是１，第二个数字为执行的次数，第三个为执行的代码
#3.在弹框中提示是否执行成功
echo -e "\033[32m脚本即将开始执行\033[0m"
counter=1 #记录执行语句次数
input_param1=$1
input_param2=$2
input_param3=${@:3}
param_processing $input_param1
echo -e "\033[32m共执行$counter次\033[0m"
echo -e "\033[32m脚本执行结束\033[0m"





