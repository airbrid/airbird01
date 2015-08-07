<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>泗蒙UI</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyworsd3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h3>泗蒙操作</h3>
	<a href="user/list.do?id=4">查询单独数据</a>
	<br />
	<a href="user/add.do">添加</a>
	<br />
	<a href="user/adduser.do">客户端添加</a>
	<br />
	<a href="user/select.do?currentPageNo=1&pageSize=5">查询所有数据</a>
	<br />
	<a href="user/selectclient.do">返回客户端数据</a>
	<br />
	<a href="user/selectparament.do?resultString=success">传递参数查询并返回</a>
	<br />
	<a href= "person/registermain.do">注册界面</a>
	<br/>
	<a href= "person/loginmain.do">登陆界面</a>
	<br />
</body>
</html>
