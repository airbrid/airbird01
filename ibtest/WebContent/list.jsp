<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>all Account Result</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <script>
  function deleteUser(){
	  
  }
  </script>
  <body>
  <a href="index.jsp">返回首页</a>
  <br/>
    	<c:forEach items="${list}" var="data">
    		id: ${data.id}---name: ${data.username }---password:${data.password }
    		 <a href="user/deleteUser.do?id=${data.id}">删除</a>
    		 <hr/>
    	</c:forEach>	
  </body>
</html>
