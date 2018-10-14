<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style type="text/css">
	h1{
		color: #5B00AE;
		text-align: center;
		letter-spacing: 2px;
	}
	div{
		width:300px;
		margin:0 auto;
		text-align:center;
	}
	.input1{
		width:110px;
		height:30px;
		font-size:15px;
	}
	.input2{
		width:60px;
		height:30px;
		font-size:15px;
	}
	.input3{
		width:60px;
	}
</style> 
<%
	String empjob=request.getParameter("empjob");
 	pageContext.setAttribute("empjob", empjob);
%>
<body>
	<h1>添加成功！</h1>
	<div>
		<br>
		<form action="selectAction?JOB=${empjob}" method="post">
			查询员工工作种类：<input class="input3" type="text" name="empjob" value="${empjob}" readonly>
			<br><br>
			<input class="input2" type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="input2" type="button" onclick="window.location.href='addemp.jsp'" value="返回">
		</form>
	</div>
</body>
</html>