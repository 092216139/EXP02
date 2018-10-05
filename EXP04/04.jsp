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
<title>九九乘法表</title>
</head>
<body>
	<form action="04.jsp" method="post">
		请输入一个数字：<input type="text" name="number"><br>
		<input type="submit" value="提交">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"><br>
		该数字的九九乘法表为：<br>
		<%
			String str=request.getParameter("number");
			int number;
			if(str!=null){
				number=Integer.parseInt(str);
				pageContext.setAttribute("number", number);
				for(int i=number;i<=9;i++){
					pageContext.setAttribute("i", i);%>
					${number}*${i}=${number*i}&nbsp;&nbsp;&nbsp;
				<%}
			}
		%>
	</form>
</body>
</html>