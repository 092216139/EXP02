<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<base href="<%=basePath%>">
<title>Insert title here</title>
</head>
<style type="text/css">
	a{
		text-decoration:none;
		color:#000000;
	}
	a:hover{
		color:#6a6aff;
	}
	h2{
		color:#ce0000;
	}
</style>
<body>
	<h2>登录失败！请检查用户昵称或密码是否正确！</h2>
	<a href="05-login.jsp">重新登录</a>
</body>
</html>