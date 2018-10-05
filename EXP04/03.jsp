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
	String bgcolor=request.getParameter("bgcolor");
	String fsize=request.getParameter("fsize");
	String twidth=request.getParameter("twidth");
	String tborder=request.getParameter("tborder");
	pageContext.setAttribute("bgcolor", bgcolor);
	pageContext.setAttribute("fsize", fsize);
	pageContext.setAttribute("twidth", twidth);
	pageContext.setAttribute("tborder", tborder);
%>
<body bgcolor="${pageScope.bgcolor}">
	<form action="03.jsp" method="post">
		<table width="${pageScope.twidth}" border="${pageScope.tborder}">
			<tr>
				<td><font size="${pageScope.fsize}">请输入背景色：</font></td>
				<td><input type="text" name="bgcolor"></td>
			</tr>
			<tr>
				<td><font size="${pageScope.fsize}">请输入字体大小：</font></td>
				<td><input type="text" name="fsize"></td>
			</tr>
			<tr>
				<td><font size="${pageScope.fsize}">请输入表格宽度：</font></td>
				<td><input type="text" name="twidth"></td>
			</tr>
			<tr>
				<td><font size="${pageScope.fsize}">请输入表格边框：</font></td>
				<td><input type="text" name="tborder"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="提交"></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td>
			</tr>
		</table> 
	</form>
</body>
</html>