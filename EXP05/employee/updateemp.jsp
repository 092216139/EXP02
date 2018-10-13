<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>修改员工信息</title>
</head>
<style type="text/css">
	h1{
		color: #5B00AE;
		text-align: center;
		letter-spacing: 2px;
	}
	.td1{
		height:40px;
		color: #5B00AE;
		font-size:20px;
	}
</style> 
<body>
	<h1>修改员工信息</h1>
	<form action="updateEmpAction" method="post"> 
		<input type="hidden" name="EMP_ID" value="${emp.EMP_ID}">
  		<table style="width:300px; margin:0 auto;">
			<tr>
				<td class="td1">员工姓名：</td>
				<td><input type="text" name="EMP_NAME" value="${emp.EMP_NAME}"></td>
			</tr>
			<tr>
				<td class="td1">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
				<td><input type="text" name="JOB" value="${emp.JOB}"></td>
			</tr>
			<tr>
				<td class="td1">工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资：</td>
				<td><input type="text" name="SALARY" value="${emp.SALARY}"></td>
			</tr>
			<tr>
				<td class="td1">部门编号：</td>
				<td><input type="text" name="DEPT" value="${emp.DEPT}"></td>
			</tr>
			<tr>
				<td align="right">
					<input type="submit" value="确定">
				</td>
				<td align="center">
					<input type="reset" value="重置">
				</td>
			</tr>
		</table>
  	</form>
</body>
</html>