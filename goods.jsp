<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.valueBean.GoodsSingle" %>
<%@ page import="com.toolsBean.MyTools" %>
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
<body>
	<%	ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");	%>
	<table width="600px" border="1px solid #ca8eff" rules="none" cellspacing="0" cellpadding="0">
	<%  if(goodsList==null||goodsList.size()==0){ %>
			<tr height="100"><td colspan="4" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
				int id=MyTools.strToint(request.getParameter("goods"));
				GoodsSingle single=(GoodsSingle)goodsList.get(id);
		%>
		<tr height="50" align="center">
	    	<td><img src="images/<%="goods"+id%>.jpg" width="450"></td>
		</tr>
		<tr height="50">
			<td align="center"><%=single.getName()%>：<%=single.getProduct() %></td>
		</tr>
		<tr height="50">
			<td align="center"><font size="5" color="#b15bff">￥<%=single.getPrice()%></font></td>
		</tr>
		<tr height="50">
			<td align="center">
			<form action="dodress.jsp?action=buy&id=<%=id %>" method="post">
		     	<input type="submit" value="加入购物车" name="buy">&nbsp;&nbsp;
		     	<input type="submit" value="查看购物车" name="buy">&nbsp;&nbsp;
		     	<input type="submit" value="返回商城" name="buy">
			</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>