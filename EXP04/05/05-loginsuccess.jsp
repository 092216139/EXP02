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
<title>显示用户填写的注册信息</title>
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
<%
	request.setCharacterEncoding("utf-8");
	// 一个name对应多个value
	String [] hobbies=request.getParameterValues("hobbies");
	String str="";
	for(int i=0;i<hobbies.length;i++){
		str+=hobbies[i]+' ';
	}
	pageContext.setAttribute("hobbies", str);
%>
<body>
  <div>
	<form action="05-login.jsp" method="post">
		<table>
			<tr>
				<td>用户昵称：</td>
				<td>${User.username}</td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
				<td>${User.password}</td>
			</tr>
			<tr>
				<td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
				<td>${User.sex}</td>
			</tr>
			<tr>
				<td>爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好：</td>
				<td>${hobbies}</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="返回"></td>
			</tr>
		</table>
	</form>
  </div>
</body>
</html>