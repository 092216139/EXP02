<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>应用EL访问JavaBean属性</title>
</head>
<style type="text/css">
	div{
	width:400px;
	margin:20px auto;
	}
	tr{
	line-height:40px;
	}
</style>
<body>
  <div>
	<form action="05-doLogin.jsp">
		<table>
			<tr>
				<td>用户昵称：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="confirmpsw"></td>
			</tr>
			<tr>
				<td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
				<td>
					<input type="radio" value="男" name="sex" checked>男 
					<input type="radio" value="女" name="sex">女
				</td>
			</tr>
			<tr>
				<td>爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好：</td>
				<td>
					<input type="checkbox" value="体育" name="hobbies">体育
					<input type="checkbox" value="美术" name="hobbies">美术
					<input type="checkbox" value="音乐" name="hobbies">音乐
					<input type="checkbox" value="旅游" name="hobbies">旅游
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td align="left"><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
  </div>
</body>
</html>