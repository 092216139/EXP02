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
	tr{
	line-height:35px;
	}
</style>
<body>
	<%
		session.setAttribute("username", "孤独求败");
		session.setAttribute("password", "123456");
		response.sendRedirect("02-loginsuccess.jsp");
	%>
	<table>
		<tr>
			<td>用户名：</td>
			<td>
				<input type="text" name="username" value=<%=(String)session.getAttribute("username") %>>
			</td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;&nbsp;码：</td>
			<td>
				<input type="password" name="password" value=<%=(String)session.getAttribute("password") %>>
			</td>
		</tr>
	</table>
</body>
</html>