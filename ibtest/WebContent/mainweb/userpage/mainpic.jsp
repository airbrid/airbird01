<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../js.jsp"></jsp:include>
<script type="text/javascript" src="../js/userjs/chart.js"></script>

<title>The Main Page</title>
</head>
<body>
	<!-- left side content -->
	<div id="leftSide">
		<!-- log side -->
		<div class="logo">
			<a href="index.jsp"><img alt="" src="../images/logo.png"></a>
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
					<a href="#" title=""><img src="../images/userPic.png" alt="" /></a><span>Howdy,
						Eugene!</span>
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
		<!-- Responsive header -->

		<!-- right middle side content -->

		<!-- Title area -->
		<div class="titleArea">
			<div class="wrapper">
				<div class="pageTitle">
					<h5>Mainboard</h5>
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

		<div class="wrapper">
			 <!-- Dynamic table -->
			<div class="widget">
			<div class="title"><img src="../images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Dynamic table</h6></div>                          
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
            <thead>
            <tr>
            <th>Image</th>
            <th>Rendering engine</th>
            <th>Browser</th>
            <th>Platform(s)</th>
            <th>Engine version</th>
            </tr>
            </thead>
            <tbody>
            <tr class="gradeX">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Trident</td>
            <td>Internet
            Explorer 4.0</td>
            <td>Win 95+</td>
            <td class="center"><input type="button" value="进入店铺" class="dredB" /></td>
            </tr>
            <tr class="gradeC">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Trident</td>
            <td>Internet
            Explorer 5.0</td>
            <td>Win 95+</td>
            <td class="center"><input type="button" value="进入店铺" class="blueB" /></td>
            </tr>
            <tr class="gradeA">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>KHTML</td>
            <td>Konqureror 3.5</td>
            <td>KDE 3.5</td>
            <td class="center"><input type="button" value="进入店铺" class="dredB" /></td>
            </tr>
            <tr class="gradeX">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Tasman</td>
            <td>Internet Explorer 4.5</td>
            <td>Mac OS 8-9</td>
            <td class="center"><input type="button" value="进入店铺" class="dblueB" /></td>
            </tr>
            <tr class="gradeC">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Tasman</td>
            <td>Internet Explorer 5.1</td>
            <td>Mac OS 7.6-9</td>
            <td class="center"><input type="button" value="进入店铺" class="blackB" /></td>
            </tr>
            <tr class="gradeA">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Misc</td>
            <td>NetFront 3.4</td>
            <td>Embedded devices</td>
            <td class="center"><input type="button" value="进入店铺" class="violetB" /></td>
            </tr>
            <tr class="gradeX">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Misc</td>
            <td>Lynx</td>
            <td>Text only</td>
            <td class="center"><input type="button" value="进入店铺" class="greenB" /></td>
            </tr>
            <tr class="gradeC">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Misc</td>
            <td>IE Mobile</td>
            <td>Windows Mobile 6</td>
            <td class="center"><input type="button" value="进入店铺" class="redB" /></td>
            </tr>
            <tr class="gradeU">
            <td align="center"><a href="../images/big.png" title="" rel="lightbox"><img src="../images/user.png" alt="" /></a></td>
            <td>Other browsers</td>
            <td>All others</td>
            <td>-</td>
            <td class="center"><input type="button" value="进入店铺" class="greenB" /></td>
            </tr>
            </tbody>
            </table>  
        </div>
			</div>
		</div>
	
</body>
</html>