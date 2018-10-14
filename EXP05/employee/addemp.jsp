<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加员工</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	div{
		width:400px;
		margin:0 auto;
		color: #5B00AE;
		font-size:20px;
		text-indent:2em;
	}
	.input1{
		width:80px;
		height:30px;
		font-size:15px;
	}
	.input2{
		width:60px;
		height:30px;
		font-size:15px;
	}
	.input3{
		width:110px;
		height:30px;
		font-size:15px;
	}
</style> 
  <body>
  ${AddEmp}
  	<h1>添加员工</h1>
  	<form action="addEmpAction" method="post"> 
  		<table style="width:300px; margin:0 auto;">
			<tr>
				<td class="td1">员工姓名：</td>
				<td><input type="text" name="EMP_NAME"></td>
			</tr>
			<tr>
				<td class="td1">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
				<td><input type="text" name="JOB"></td>
			</tr>
			<tr>
				<td class="td1">工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资：</td>
				<td><input type="text" name="SALARY"></td>
			</tr>
			<tr>
				<td class="td1">部门编号：</td>
				<td><input type="text" name="DEPT"></td>
			</tr>
			<tr>
				<td align="right">
					<input class="input1" type="submit" value="添加员工">
				</td>
				<td align="center">
					<input class="input2" type="reset" value="重置">
				</td>
			</tr>
		</table>
		<br>
		<div>
			查询请选择员工工作种类：
			<select name="empjob">
				<option value="clerk">clerk</option>
				<option value="manager">manager</option>
			</select>
		</div>
  	</form>
  	<div>
  		<form action="selectAllAction" method="post">
			<input class="input3" type="submit" value="全部员工信息">
		</form>
	</div>
  </body>
</html>
