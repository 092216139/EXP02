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
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="com.User"></jsp:useBean>
	<jsp:setProperty property="username" name="user" value="anne"/>
	用户名：<jsp:getProperty property="username" name="user"/>
</body>
</html>