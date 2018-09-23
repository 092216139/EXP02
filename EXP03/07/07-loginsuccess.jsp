<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="<%=basePath%>">
<title>登录成功</title>
</head>
<style type="text/css">
	h2,h3{
		color:#0000c6;
	}
</style>
<body>
	<h2>登录成功！</h2>
	<h3>欢迎您！</h3>
	用户名：<%=session.getAttribute("username") %>
</body>
</html>