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
	<script type="text/javascript" src="<%=basePath%>mainweb/userjs/page.js"></script>
  </head>
  <style>
  .splitPageStyle{
  text-align:center;
  vertical-align:middle;
  }
  .splitPage{
  color:blue;
  cursor:pointer;
  }
  </style>
  <script>
  function deleteUser(){
	  
  }
  </script>
  <body>
  <a href="index.jsp">返回首页</a>
  <br/>
      	<table class="splitPageStyle">
      	<c:choose>
      		<c:when test="true">	
      		<tr>
		<th>id:</th>
		<th>name:</th>
		<th>password:</th>
		</tr>
      	<c:forEach items="${list.data}" var="user">
		<tr>
		<td> ${user.id}</td>
		<td> ${user.username}</td>
		<td> ${user.password}</td>
		<td><a href="user/deleteUser.do?id=${user.id}">删除</a></td>
		</tr>
    	</c:forEach>
    	<tr>
		<td colspan="14" align="center" class="splitPageStyle">${list.pageString}</td>		
		</tr>
      	</c:when>
      	<c:otherwise>
      	<tr>查询的内容weikong</tr>
      	</c:otherwise>
      		
    	</c:choose>
    	</table>
    	<a id="currentPageNo"></a>	
  </body>
</html>
