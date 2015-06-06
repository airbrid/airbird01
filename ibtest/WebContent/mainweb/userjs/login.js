/**
 * 登录操作数据处理
 */
$(function() {

});
function loginTo() {
	var username = $("#login").val();
	var password = $("#pass").val();
	var redMe = $("#redMe").val();
	$.ajax({
		type : "post",// 请求方式
		url : "./login/loginCheckJs.do",// 请求路径
		data : {
			username : username,
			password : password,
			redMe : redMe
		},// 传递参数到后台处理
		dataType : "json",
		success : function(data) {
			// alert(data);
			if (data.result == "success") {
				window.location.href = "./login/SessionCheck.do";// 当前页面打开
			} else if (data.result == "error") {
				alert("请输入正确的用户名及密码");
				$("#login").val("");
				$("#pass").val("");
//				window.location.href = "mainweb/error/403.jsp";// 当前页面打开
				// window.open("error/403.jsp");//重新打开一个页面
			}
		},
		error : function(data) {
			alert("服务器异常！");
		}
	});
}
