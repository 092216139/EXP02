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
	<%
		//初始化处理
		if(pageContext.getAttribute("pageCount")==null){
			pageContext.setAttribute("pageCount", new Integer(0));
		}
		if(session.getAttribute("sessionCount")==null){
			session.setAttribute("sessionCount", new Integer(0));
		}	
		//信息累加处理
		Integer count1=(Integer)pageContext.getAttribute("pageCount");
		pageContext.setAttribute("pageCount", new Integer(count1.intValue()+1));
		Integer count2=(Integer)session.getAttribute("sessionCount");
		session.setAttribute("sessionCount", new Integer(count2.intValue()+1));
	%>
<body>
	<b>页面计数：</b><%=pageContext.getAttribute("pageCount") %><br>
	<b>浏览器计数：</b><%=session.getAttribute("sessionCount") %><br>
</html>