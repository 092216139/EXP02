<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	用户名：<%=request.getParameter("username") %><br>
	密码：<%=request.getParameter("password") %><br>
	请求使用的协议：<%=request.getProtocol() %><br>
	请求的URI：<%=request.getServletPath() %><br>
	请求方法：<%=request.getMethod() %><br>
	远程地址：<%=request.getRemoteAddr()%><br>
</body>
</html>