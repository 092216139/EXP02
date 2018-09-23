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
<body>
	<%
		String username=(String)session.getAttribute("username");
		String password=(String)session.getAttribute("password");
	%>
	用户名：<%=username %><br>
	密&nbsp;&nbsp;&nbsp;码：<%=password %>
</body>
</html>