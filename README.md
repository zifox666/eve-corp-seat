## 项目介绍
修改自雨轩的cacx军团管理系统  

1.更换了km/km_item读取中不正常的名称显示  
2.增加了对中国大陆ip被ccp屏蔽的代理接口  
3.删除了初次导入数据库时，被导入的遗留权限表  
4.修复了ccp api授权回调地址不正确导致无法正确获取token的问题  
5.修改了角色钱包api接口不正常的问题  
6.移除了登录页面本无法使用的eve登录功能  
7.对web界面的部分英文表述做了优化  
8.移除了discord机器人  
  
## 项目目录介绍
有问题请邮件zifox666@gmail.com
1. application = 军团系统主程序API
2. biz = 军团业务处理中心
3. discord = discord机器人程序
4. framework = 军团系统核心框架
5. job = 定时工作，用来执行用户数据的刷新，定时任务的处理
6. ui = 军团系统前端UI界面
   
## 部署操作
1. 导入sql目录下的eve_corp_manager_cacx.sql 到数据库
2. 导入sql目录下的data.sql 到数据库
3. 修改ecmc-biz/src/main/resources/config/application-db.yml 中的数据库连接信息
4. 安装redis，修改ecmc-biz/src/main/resources/config/application-redis.yml 中的redis连接信息
5. 修改数据库中sys_config表中配置
6. Jdk版本为17，maven版本为3.8.2
7. 启动idea直接运行ecmc-application中的EcmcApplication.java
8. 打包执行maven clean package
9. CentOS下后台执行 `nohup java -jar ecmcApp.jar > cataline.out 2>&1 &`
