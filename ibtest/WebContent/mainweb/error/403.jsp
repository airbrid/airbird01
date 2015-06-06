<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = "luhe";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../js.jsp" />
<title>403 error Page</title>
</head>
<body class="nobg errorPage">
	<!-- the top fix navigation -->
	<div class="topNav">
		<div class="wrapper">
			<div class="welcome">
				<a href="#" title="User Information"><img alt=""
					src="../images/userPic.png"></a><span><%=username%></span>
			</div>
			<div class="userNav">
				<ul>
					<li><a href="#" title=""><img
							src="../images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
					<li><a href="#" title=""><img
							src="../images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
					<li class="dd"><a title=""><img
							src="../images/icons/topnav/messages.png" alt="" /><span>Messages</span><span
							class="numberTop">8</span></a>
						<ul class="userDropdown">
							<li><a href="#" title="" class="sAdd">new message</a></li>
							<li><a href="#" title="" class="sInbox">inbox</a></li>
							<li><a href="#" title="" class="sOutbox">outbox</a></li>
							<li><a href="#" title="" class="sTrash">trash</a></li>
						</ul></li>
					<li><a href="#" title=""><img
							src="../images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
					<li><a href="../log.jsp" title=""><img
							src="../images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<!-- Main content wrapper -->
	<div class="errorWrapper">
		<span class="sadEmo"></span> <span class="errorTitle">Ahh,
			something went wrong here :(</span> <span class="errorNum">网页打开失败，请检查网络连接</span>
		<span class="errorDesc">Oops! Sorry, an error has occur. Access
			forbidden!</span> <a href="../mainPage/index.jsp" title="" class="button dredB"><span>Back
				to Main WebSite</span></a>
	</div>
</body>
</html>