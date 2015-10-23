# win-dev
供windows下开发，建立开发和测试环境
##安装步骤
- 本地安装win版的 virtualbox 与 vagrant 
- 在命令行下定位到win-dev目录，键入如下命令，完成dev虚拟机的创建（第一次运行时间较长，创建时会联网下载ubuntu模板），创建完成后执行脚本完成所需软件的自动化安装，然后完成test虚拟机的创建
```
vagrant up dev        #创建dev虚拟机并开机
vagrant provision     #执行shell脚本，自动安装软件
vagrant up test       #创建test虚拟机并开机
```
- 根据返回信息即可查询到是否创建成功，也可打开virtualbox查看，dev ip: 192.168.33.21 ; test ip: 192.168.33.22
- 启动后，即可通过ssh管理虚拟机
- 要执行关机指令时，在命令行下定位到win-dev目录，依次关闭dev、test
```
vagrant halt dev      #关闭dev虚拟机
vagrant halt test     #关闭test虚拟机
```
##注意
- 完成创建后，以后可直接开机，不需执行shell脚本
```
vagrant up dev        #打开dev虚拟机
vagrant up test       #打开test虚拟机
```
- 强烈建议打开或关闭虚拟机时，依次执行，一个一个开关，若直接使用vagrant up、vagrant test 有一定几率会失败
- 开第二个虚拟机时，win端可能会显示延迟信息，不用理会，自行ping之或打开virtualbox查看是否开启成功
