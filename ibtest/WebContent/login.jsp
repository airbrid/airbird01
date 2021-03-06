<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>随便点登录界面</title>
<jsp:include page="mainweb/js.jsp" />
</head>

<script type="text/javascript" src="mainweb/userjs/login.js"></script>
<body class="nobg loginPage">

	<!-- Top fixed navigation -->
	<div class="topNav">
		<div class="wrapper">
			<div class="userNav">
				<ul>
					<li><a href="#" title=""><img
							src="mainweb/images/icons/topnav/mainWebsite.png" alt="" /><span>Main
								website</span></a></li>
					<li><a href="#" title=""><img
							src="mainweb/images/icons/topnav/profile.png" alt="" /><span>Contact
								admin</span></a></li>
					<li><a href="#" title=""><img
							src="mainweb/images/icons/topnav/messages.png" alt="" /><span>Support</span></a></li>
					<li><a href="login.jsp" title=""><img
							src="mainweb/images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>


	<!-- Main content wrapper -->
	<div class="loginWrapper">
		<div class="loginLogo">
			<img src="mainweb/images/loginLogo.png" alt="" />
		</div>
		<div class="widget">
			<div class="title">
				<img src="mainweb/images/icons/dark/files.png" alt="" class="titleIcon" />
				<h6>Login panel</h6>
			</div>
			<form id="validate" class="form">
				<fieldset>
					<div class="formRow">
						<label for="login">Username:</label>
						<div class="loginInput">
							<input type="text" name="username" class="validate[required]" placeholder="Username"
								id="login" />
						</div>
						<div class="clear"></div>
					</div>

					<div class="formRow">
						<label for="pass">Password:</label>
						<div class="loginInput">
							<input type="password" name="password" class="validate[required]"  placeholder="Password"
								id="pass" />
						</div>
						<div class="clear"></div>
					</div>

					<div class="loginControl">
						<div class="rememberMe">
							<input type="checkbox" id="remMe" name="remMe" /><label
								for="remMe">Remember me</label>
						</div>
						<input type="button" value="Log me in" class="dredB logMeIn"
							onclick="loginTo()" />
						<div class="clear"></div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>

	<!-- Footer line -->
	<div id="footer">
		<div class="wrapper">
			As usually all rights reserved.CopyTitle luhe 2015 <a
				href="#"title="随便点">随便点</a>
			- Collect from <a href="#" title="随便点">随便点服务端</a>
		</div>
	</div>


</body>
</html>