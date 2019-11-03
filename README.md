## 学校实训项目
### 项目名称
- 企业信息管理系统 一一 RBAC权限控制模块

### 框架
- Spring + SpringMVC + MyBatis

### 开发环境
- 开发软件：IntelliJ IDEA 2019.2
- JDK 版本：JDK 1.8
- 数据库：OracleXE
- Web 服务器：Tomcat 9
- 数据库建模：Powerdesinger

### 项目结构
```
|--src
	|--com.henleo.rbac
		|--dao				持久层接口包
		|--domain			JavaBean类包
		|--service			业务层接口包
			|--impl			业务实现类包
		|--test				测试类包
		|--utils			工具包
		|--web				
			|--action		控制层包
|--web
	|--WEB-INF
		|--classes
		|--lib
		|--webapp			静态资源
		|--springmvc.xml	
		|--web.xml
|-—sources					数据库文件
```

### 数据库模型
![tab.png](https://i.loli.net/2019/11/03/ji9YfRyWslkLSte.png)


### UI
静态页面是老师发下来的，将就着用了
![rbac.png](https://i.loli.net/2019/11/03/m2Kb6T7PzJvyujN.png)