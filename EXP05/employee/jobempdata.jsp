<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>员工信息</title>
</head>
<style type="text/css">
h1{
	color: #5B00AE;
	text-align: center;
	letter-spacing: 2px;
}
th{
	color: #5B00AE;
}
td,th{
	height:40px;
	border:1px solid #ccc;
	box-shadow: 0px 0px 3px #ccc;
}
td:last-child:hover{
	cursor:pointer;
	color:#8600ff;
}
a{
	text-decoration:none;
}
font{
	font-size:20px;
}
</style>
<body>
	<h1>员工信息</h1>
    <div style="text-align: right; width:1000px;margin:40px auto;">
        <a href="addempsuccess.jsp"><font>返回</font></a>
    	<table border="1" cellpadding="0" cellspacing="0" style="text-align: center;width:1000px;border:1px solid #ccc;">
    		<tr><th>员工编号</th><th>员工姓名</th><th>职称</th><th>工资</th><th>部门编号</th></tr>
    		<c:forEach var="e" items="${empAll}">   
	    		<tr>
	    			<td>${e.EMP_ID}</td>
	    			<td>${e.EMP_NAME}</td>
	    			<td>${e.JOB}</td>
	    			<td>${e.SALARY}</td>
	    			<td>${e.DEPT}</td>
	    		</tr>
    		</c:forEach>
    	</table>
   	</div>	
</body>
</html>