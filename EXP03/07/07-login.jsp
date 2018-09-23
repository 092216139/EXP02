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
<style type="text/css">
	tr{
	line-height:35px;
	}
</style>
<body>
	<form action="doLogin.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td>
					<input type="text" name="username" value="">
				</td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;码：</td>
				<td>
					<input type="password" name="password" value="">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>