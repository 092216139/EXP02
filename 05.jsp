<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '04.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style type="text/css">
  	.th1{
  		border-right:1px solid #000;
  		border-top:2px solid #000;
  		border-bottom:1px solid #000;
  		background-color:#eee;
  	}
  	.th2{
  		border-top:2px solid #000;
  		border-bottom:1px solid #000;
  		background-color:#eee;
  	}
  	.td1{
  		text-indent:1em;
  		border-bottom:1px solid #000;
  		border-right:1px solid #000;
  	}
  	 .td2{
  	 	border-bottom:1px solid #000;
  	 }
  </style>
  
  <body>
  	<%! 
  		String str[]={"010020199601026929","010020199711126928"};
  	 %>
   <form action="information.jsp" method="post">
    <table cellspacing="0" width="50%" align="center">
   		<tr>
   			<th class="th1">身份证</th>
   			<th class="th2">生日</th>
   		</tr>
   		<tr>
   			<td name="str1" class="td1"><%=str[0] %></td>
   			<td name="birthday1" class="td2"><%=str[0].substring(6,10)+"-"+str[0].substring(10,12)+"-"+str[0].substring(12,14) %></td>
   		</tr>
   		<tr>
   			<td name="str2" class="td1"><%=str[1] %></td>
   			<td name="birthday2" class="td2"><%=str[1].substring(6,10)+"-"+str[1].substring(10,12)+"-"+str[1].substring(12,14) %></td>
   		</tr>
   	</table>
   </form>
  </body>
</html>
