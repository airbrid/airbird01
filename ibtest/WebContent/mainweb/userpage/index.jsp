<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../js.jsp"></jsp:include>
<script type="text/javascript" src="../mainweb/userjs/chart.js"></script>

<title>The Main Page</title>
</head>
<body>
	<!-- left side content -->
	<input id="jspSession" type="hidden" value="<%=session.getAttribute("username")%>"/>
	<div id="leftSide">
		<!-- log side -->
		<div class="logo">
			<a href="index.jsp"><img alt="" src="../mainweb/images/logo.png"></a>
		</div>
		<!-- split rows icon -->
		<div class="sidebarSep mt0"></div>
		<!-- Search widget -->
		<form action="" class="sidebarSearch">
			<input type="text" name="search" placeholder="search....." id="ac">
			<input type="submit" value="">
		</form>
		<!-- split rows icon -->
		<div class="sidebarSep mt0"></div>

		<!-- general balance widget -->
		<div class="genBalance">
			<a href="#" title="" class="amount"> <span>General
					balance:</span> <span class="balanceAmount">$10000000.21</span>
			</a> <a href="#" class="amChanges"> <strong class="sPositive">+0.6%</strong>
			</a>
		</div>
		<!-- next update time widget -->
		<div class="nextUpdate">
			<ul>
				<li>Next update in</li>
				<li>23 hrs 14 min</li>
			</ul>
			<div class="pWrapper">
				<div class="progressG" title="48%"></div>
			</div>
		</div>

		<div class="sidebarSep"></div>

		<!-- left navigation -->
		<ul id="menu" class="nav">
			<li class="dash"><a href="index.jsp" title="" class="active"><span>Dashboard</span></a></li>
			<li class="charts"><a href="#" title=""><span>Statistics
						and charts</span></a></li>
			<li class="forms"><a href="#" title="" class="exp"><span>Forms
						stuff</span><strong>4</strong></a>
				<ul class="sub">
					<li><a href="#" title="">Form elements</a></li>
					<li><a href="#" title="">Validation</a></li>
					<li><a href="#" title="">WYSIWYG and file uploader</a></li>
					<li class="last"><a href="#" title="">Wizards</a></li>
				</ul></li>
			<li class="ui"><a href="#" title=""><span>Interface
						elements</span></a></li>
			<li class="tables"><a href="#" title="" class="exp"><span>Tables</span><strong>3</strong></a>
				<ul class="sub">
					<li><a href="#" title="">Static tables</a></li>
					<li><a href="#" title="">Dynamic table</a></li>
					<li class="last"><a href="#" title="">Sortable &amp;
							resizable tables</a></li>
				</ul></li>
			<li class="widgets"><a href="#" title="" class="exp"><span>Widgets
						and grid</span><strong>2</strong></a>
				<ul class="sub">
					<li><a href="#" title="">Widgets</a></li>
					<li class="last"><a href="#" title="">Grid</a></li>
				</ul></li>
			<li class="errors"><a href="#" title="" class="exp"><span>Error
						pages</span><strong>6</strong></a>
				<ul class="sub">
					<li><a href="../error/403.jsp" title="">403 page</a></li>
					<li><a href="../error/403.jsp" title="">404 page</a></li>
					<li><a href="../error/403.jsp" title="">405 page</a></li>
					<li><a href="../error/403.jsp" title="">500 page</a></li>
					<li><a href="../error/403.jsp" title="">503 page</a></li>
					<li class="last"><a href="#" title="">Website is offline</a></li>
				</ul></li>
			<li class="files"><a href="#" title=""><span>File
						manager</span></a></li>
			<li class="typo"><a href="#" title="" class="exp"><span>Other
						pages</span><strong>3</strong></a>
				<ul class="sub">
					<li><a href="#" title="">Typography</a></li>
					<li><a href="#" title="">Calendar</a></li>
					<li class="last"><a href="#" title="">Gallery</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- right side content -->
	<div id="rightSide">
		<!-- right top side content -->
		<div class="topNav">
			<div class="wrapper">
				<div class="welcome">
					<a href="#" title=""><img src="../mainweb/images/userPic.png" alt="" /></a><span>Welcome:<%=session.getAttribute("username")%></span>
				</div>
				<div class="userNav">
					<ul>
						<li><a href="#" title=""><img
								src="./images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
						<li class="dd"><a title=""><img
								src="./images/icons/topnav/messages.png" alt="" /><span>Messages</span><span
								class="numberTop">8</span></a>
							<ul class="userDropdown">
								<li><a href="#" title="" class="sAdd">new message</a></li>
								<li><a href="#" title="" class="sInbox">inbox</a></li>
								<li><a href="#" title="" class="sOutbox">outbox</a></li>
								<li><a href="#" title="" class="sTrash">trash</a></li>
							</ul></li>
						<li><a href="#" title=""><img
								src="./images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
						<li><a href="./../login.jsp" title=""><img
								src="./images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!-- Responsive header -->

		<!-- right middle side content -->

		<!-- Title area -->
		<div class="titleArea">
			<div class="wrapper">
				<div class="pageTitle">
					<h5>Dashboard</h5>
					<span>Do your layouts deserve better than Lorem Ipsum.</span>
				</div>
				<div class="middleNav">
					<ul>
						<li class="mUser"><a title=""><span class="users"></span></a>
							<ul class="mSub1">
								<li><a href="#" title="">Add user</a></li>
								<li><a href="#" title="">Statistics</a></li>
								<li><a href="#" title="">Orders</a></li>
							</ul></li>
						<li class="mMessages"><a title=""><span class="messages"></span></a>
							<ul class="mSub2">
								<li><a href="#" title="">New tickets<span
										class="numberTop">8</span></a></li>
								<li><a href="#" title="">Pending tickets<span
										class="numberTop">12</span></a></li>
								<li><a href="#" title="">Closed tickets</a></li>
							</ul></li>
						<li class="mFiles"><a href="#"
							title="Or you can use a tooltip" class="tipN"><span
								class="files"></span></a></li>
						<li class="mOrders"><a title=""><span class="orders"></span><span
								class="numberMiddle">8</span></a>
							<ul class="mSub4">
								<li><a href="#" title="">Pending uploads</a></li>
								<li><a href="#" title="">Statistics</a></li>
								<li><a href="#" title="">Trash</a></li>
							</ul></li>
					</ul>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>

		<div class="line"></div>

		<!-- Page statistics and control buttons area -->
		<div class="statsRow">
			<div class="wrapper">
				<div class="controlB">
					<ul>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/plus.png" alt="" /><span>Add
									new session</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/database.png" alt="" /><span>New
									DB entry</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/hire-me.png" alt="" /><span>Add
									new user</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/statistics.png" alt="" /><span>Check
									statistics</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/comment.png" alt="" /><span>Review
									comments</span></a></li>
						<li><a href="#" title=""><img
								src="./images/icons/control/32/order-149.png" alt="" /><span>Check
									orders</span></a></li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div class="line"></div>

		<div class="wrapper">
			<!-- Note -->
			<div class="nNote nInformation hideit">
				<p>
					<strong>INFORMATION: </strong>Top buttons area has 3 versions - 2
					kinds of buttons and statistics. All of them could be viewed on <a
						href="#" title="">Interface elements page</a>
				</p>
			</div>
			<!-- Chart -->
			<div class="widget chartWrapper">
				<div class="title">
					<img src="./images/icons/dark/stats.png" alt="" class="titleIcon" />
					<h6>Chart</h6>
				</div>
				<div class="body">
					<div class="chart"></div>
					<div id="clickdata"></div>
				</div>
				
			</div>
			 <!-- Dynamic table -->
			<div class="widget">
			<div class="title"><img src="./images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Dynamic table</h6></div>                          
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
            <thead>
            <tr>
            <th>Rendering engine</th>
            <th>Browser</th>
            <th>Platform(s)</th>
            <th>Engine version</th>
            </tr>
            </thead>
            <tbody>
            <tr class="gradeX">
            <td>Trident</td>
            <td>Internet
            Explorer 4.0</td>
            <td>Win 95+</td>
            <td class="center">4</td>
            </tr>
            <tr class="gradeC">
            <td>Trident</td>
            <td>Internet
            Explorer 5.0</td>
            <td>Win 95+</td>
            <td class="center">5</td>
            </tr>
            <tr class="gradeA">
            <td>Trident</td>
            <td>Internet
            Explorer 5.5</td>
            <td>Win 95+</td>
            <td class="center">5.5</td>
            </tr>
            <tr class="gradeA">
            <td>Trident</td>
            <td>Internet
            Explorer 6</td>
            <td>Win 98+</td>
            <td class="center">6</td>
            </tr>
            <tr class="gradeA">
            <td>Trident</td>
            <td>Internet Explorer 7</td>
            <td>Win XP SP2+</td>
            <td class="center">7</td>
            </tr>
            <tr class="gradeA">
            <td>Trident</td>
            <td>AOL browser (AOL desktop)</td>
            <td>Win XP</td>
            <td class="center">6</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Firefox 1.0</td>
            <td>Win 98+ / OSX.2+</td>
            <td class="center">1.7</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Firefox 1.5</td>
            <td>Win 98+ / OSX.2+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Firefox 2.0</td>
            <td>Win 98+ / OSX.2+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Firefox 3.0</td>
            <td>Win 2k+ / OSX.3+</td>
            <td class="center">1.9</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Camino 1.0</td>
            <td>OSX.2+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Camino 1.5</td>
            <td>OSX.3+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Netscape 7.2</td>
            <td>Win 95+ / Mac OS 8.6-9.2</td>
            <td class="center">1.7</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Netscape Browser 8</td>
            <td>Win 98SE+</td>
            <td class="center">1.7</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Netscape Navigator 9</td>
            <td>Win 98+ / OSX.2+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.0</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.1</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.1</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.2</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.2</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.3</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.3</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.4</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.4</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.5</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.5</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.6</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">1.6</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.7</td>
            <td>Win 98+ / OSX.1+</td>
            <td class="center">1.7</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Mozilla 1.8</td>
            <td>Win 98+ / OSX.1+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Seamonkey 1.1</td>
            <td>Win 98+ / OSX.2+</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Gecko</td>
            <td>Epiphany 2.20</td>
            <td>Gnome</td>
            <td class="center">1.8</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>Safari 1.2</td>
            <td>OSX.3</td>
            <td class="center">125.5</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>Safari 1.3</td>
            <td>OSX.3</td>
            <td class="center">312.8</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>Safari 2.0</td>
            <td>OSX.4+</td>
            <td class="center">419.3</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>Safari 3.0</td>
            <td>OSX.4+</td>
            <td class="center">522.1</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>OmniWeb 5.5</td>
            <td>OSX.4+</td>
            <td class="center">420</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>iPod Touch / iPhone</td>
            <td>iPod</td>
            <td class="center">420.1</td>
            </tr>
            <tr class="gradeA">
            <td>Webkit</td>
            <td>S60</td>
            <td>S60</td>
            <td class="center">413</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 7.0</td>
            <td>Win 95+ / OSX.1+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 7.5</td>
            <td>Win 95+ / OSX.2+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 8.0</td>
            <td>Win 95+ / OSX.2+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 8.5</td>
            <td>Win 95+ / OSX.2+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 9.0</td>
            <td>Win 95+ / OSX.3+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 9.2</td>
            <td>Win 88+ / OSX.3+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera 9.5</td>
            <td>Win 88+ / OSX.3+</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Opera for Wii</td>
            <td>Wii</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Nokia N800</td>
            <td>N800</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Presto</td>
            <td>Nintendo DS browser</td>
            <td>Nintendo DS</td>
            <td class="center">8.5</td>
            </tr>
            <tr class="gradeC">
            <td>KHTML</td>
            <td>Konqureror 3.1</td>
            <td>KDE 3.1</td>
            <td class="center">3.1</td>
            </tr>
            <tr class="gradeA">
            <td>KHTML</td>
            <td>Konqureror 3.3</td>
            <td>KDE 3.3</td>
            <td class="center">3.3</td>
            </tr>
            <tr class="gradeA">
            <td>KHTML</td>
            <td>Konqureror 3.5</td>
            <td>KDE 3.5</td>
            <td class="center">3.5</td>
            </tr>
            <tr class="gradeX">
            <td>Tasman</td>
            <td>Internet Explorer 4.5</td>
            <td>Mac OS 8-9</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeC">
            <td>Tasman</td>
            <td>Internet Explorer 5.1</td>
            <td>Mac OS 7.6-9</td>
            <td class="center">1</td>
            </tr>
            <tr class="gradeC">
            <td>Tasman</td>
            <td>Internet Explorer 5.2</td>
            <td>Mac OS 8-X</td>
            <td class="center">1</td>
            </tr>
            <tr class="gradeA">
            <td>Misc</td>
            <td>NetFront 3.1</td>
            <td>Embedded devices</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeA">
            <td>Misc</td>
            <td>NetFront 3.4</td>
            <td>Embedded devices</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeX">
            <td>Misc</td>
            <td>Dillo 0.8</td>
            <td>Embedded devices</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeX">
            <td>Misc</td>
            <td>Links</td>
            <td>Text only</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeX">
            <td>Misc</td>
            <td>Lynx</td>
            <td>Text only</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeC">
            <td>Misc</td>
            <td>IE Mobile</td>
            <td>Windows Mobile 6</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeC">
            <td>Misc</td>
            <td>PSP browser</td>
            <td>PSP</td>
            <td class="center">-</td>
            </tr>
            <tr class="gradeU">
            <td>Other browsers</td>
            <td>All others</td>
            <td>-</td>
            <td class="center">-</td>
            </tr>
            </tbody>
            </table>  
        </div>
			</div>
		</div>
	</div>
</body>
</html>