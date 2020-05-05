# git & github 从入门到放弃
学习git、github一些入门资料
### 前言
* 所有内容采用Markdown语言编写,很好的一个学习[参考链接](http://xianbai.me/learn-md/index.html)
* 欢迎共同维护、交流,欢迎pull request
* 学习过程中遇到的其他问题,直接浏览器搜吧(very important)
### git篇
首先git和github是两个东西,但是又有一些联系,git是本地仓库,github是远程仓库
#### 一份推荐[资料](https://git-scm.com/book/zh/v2)
* 入门的话看**起步、git基础、git分支**这三部分足够了剩下的可以以后熟悉了再翻看看
#### 本地建立一个仓库
* ``git init``:初始化仓库
* ``git add .``:提交目录下所有文件到暂存区,``git add file_name``:提交指定文件到暂存区,多个问题中间空格空开就ok
* ``git commit -m 'commit_info'``:提交文件到本地仓库,commit_info是自己提交使备注的信息
#### 本地保存好了,怎么提交到github
确保已经看过没下面**配置git和github**的过程,否则是提交不上去的
* 在github上新建一个repository,并复制仓库链接,最好选择ssh链接(不是https开头的链接)
* ``git remote add origin 复制的仓库链接``：建立本地仓库和远程的连接,才能传输上去<br>
可以用``git remote -v``查看本地库连接到的远程目标
* ``git push``:执行这个会提示先执行一个什么语句(执行这个``git push --set-upstream origin master
``),复制粘贴运行完,就已经上传到github上了,以后提交就直接``git push``就行
### github篇
* 看下面的链接之前,先去[github官网](https://github.com/)注册一个账号,记住username和email,下面要用
* [配置git和github](https://www.jianshu.com/p/ba01bc001326)


#### 其他常用命令
* ``.gitignore``:这个文件可以自己建立在本地库中,这个里面可以添加不跟踪的文件或者文件夹都可以,尤其<br>
是用一些IDE会产生奇怪的文件夹,比如clion会生成.idea文件夹,直接在``.gitignore``里写上.idea/即可,<br>
**一行只写一个文件夹或文件**
* ``git status``:查看本地文件修改状态
* ``git diff -- file_name``:上面一个命令查看如果有修改的文件,可以用这个来查看具体修改的内容
* ``git checkout -b branch_name``:新建一个分支并且切换到该分支,然后就可以进行扫操作也不怕了
* ``git checkout branch_name``:切换到指定分支(``git checkout test``：切换到test分支)
* ``git push origin test:test``:推送本地分支到远程分支,远程会自动新建分支,远程分支名也可以和本地名称不一致


