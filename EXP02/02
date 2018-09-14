
<%@ page language="java" import="java.util.*,student.stu" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示表格信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <%
  	ArrayList<stu> student=new ArrayList<stu>();
  	student.add(new stu("001","李白","男","01",723.0));
  	student.add(new stu("002","孟浩然","男","02",689.0));
  	student.add(new stu("003","杨玉环","女","03",600.0));
   %>
	<table cellspacing="0" border="2px" width="50%" align="center" >
    	<tr>
    		<th>学号</th>
    		<th>姓名</th>
    		<th>性别</th>
    		<th>班级</th>
    		<th>成绩</th>	
    	</tr>
    	<tr>
    		<td><%out.println(student.get(0).getNum()); %></td>
    		<td><%out.println(student.get(0).getName()); %></td>
    		<td><%out.println(student.get(0).getSex()); %></td>
    		<td><%out.println(student.get(0).getCla()); %></td>
    		<td><%out.println(student.get(0).getSore()); %></td>
    	</tr>
    	<tr>
    		<td><%out.println(student.get(1).getNum()); %></td>
    		<td><%out.println(student.get(1).getName()); %></td>
    		<td><%out.println(student.get(1).getSex()); %></td>
    		<td><%out.println(student.get(1).getCla()); %></td>
    		<td><%out.println(student.get(1).getSore()); %></td>
    	</tr>
    	<tr>
    		<td><%out.println(student.get(2).getNum()); %></td>
    		<td><%out.println(student.get(2).getName()); %></td>
    		<td><%out.println(student.get(2).getSex()); %></td>
    		<td><%out.println(student.get(2).getCla()); %></td>
    		<td><%out.println(student.get(2).getSore()); %></td>
    	</tr>
    </table>
  </body>
</html>
