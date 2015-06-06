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

<link href="<%=basePath%>mainweb/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>mainweb/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/jquery.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/spinner/jquery.mousewheel.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/jquery-ui.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/excanvas.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/jquery.flot.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/jquery.flot.pie.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/jquery.flot.resize.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/charts/jquery.sparkline.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/uniform.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.cleditor.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/forms/chosen.jquery.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/wizard/jquery.form.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/wizard/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/wizard/jquery.form.wizard.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/uploader/plupload.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/tables/tablesort.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/tables/resizable.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/ui/jquery.sourcerer.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/calendar.min.js"></script>
<script type="text/javascript" src="<%=basePath%>mainweb/js/plugins/elfinder.min.js"></script>

<script type="text/javascript" src="<%=basePath%>mainweb/js/custom.js"></script>

</head>
<body>

</body>
</html>