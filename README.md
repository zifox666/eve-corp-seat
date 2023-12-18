## 项目介绍
修改自雨轩的cacx军团管理系统  

1.更换了km/km_item读取中不正常的名称显示  
2.增加了对中国大陆ip被ccp屏蔽的代理接口  
3.删除了初次导入数据库时，被导入的遗留权限表  
4.修复了ccp api授权回调地址不正确导致无法正确获取token的问题  
5.修改了角色钱包api接口不正常的问题  
6.移除了登录页面本无法使用的eve登录功能  
7.对web界面的部分英文表述做了优化  
8.增加了在启动ecmcJob时自动将sde数据导入数据库  
  
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
6. 修改httpproxy为自己的代理接口（海外服务器请注释代码）
7. 修改sdejob.java中的basepath，sde下载请前往https://developers.eveonline.com/resource
8. Jdk版本为17，maven版本为3.8.2
9. 启动idea直接运行ecmc-application中的EcmcApplication.java
10. 打包执行maven clean package  
11. screen分别开两个窗口执行ecmcApp.jar/ecmcJob.jar  
12. 修改ecmc-ui下的配置文件.env.production  
13. 前往https://doc.vvbin.cn/guide/#%E4%BB%8E-github-%E8%8E%B7%E5%8F%96%E4%BB%A3%E7%A0%81了解如何配置前端  
14. 修改/ecmc-ui/src/assets的logo.png，修改/ecmc-ui/public下的图标  
15. yarn build后将dist文件部署到nginx或者类似的服务上
16. 前往阿里云注册oss服务，不需要储存图片/储存图片在本地可以忽略此步
17. 前往邮件服务器获取smtp配置，记得修改邮件验证界面ecmc-biz/src/main/resources/template/email/  
