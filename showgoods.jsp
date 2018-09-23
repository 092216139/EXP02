<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.valueBean.GoodsSingle" %>
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
<style type="text/css">
	h2{
		 color:#3a006f;
	}
	table{
		 width:600px;
		 border:1px solid #e6caff;
		 margin:0 auto;
	}
</style>
<body>
	<%
		ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");
	%>
	<table cellspacing="0" cellpadding="0">	
		<tr height="50px">
			<td colspan="3" align="center">
				<h2>欢迎您光临服装店哦！</h2>
			</td>
		</tr>
		<tr align="center" height="30px" bgcolor="#e6caff">
			<th>名称</th>
			<th>图片</th>
	    	<th>价格(元)</th>
		</tr>
		<%  if(goodsList==null||goodsList.size()==0){ %>
		<tr height="100"><td colspan="4" align="center">没有商品可显示！</td></tr>
		<% 
			} 
			else{
				for(int i=0;i<goodsList.size();i++){
					GoodsSingle single=(GoodsSingle)goodsList.get(i);
		%>           
		<tr height="50" align="center">
			<td><a href="goods.jsp?goods=<%=i %>" style="text-decoration:none"><%=single.getName()%></a></td>
			<td><a href="goods.jsp?goods=<%=i %>"><img src="images/<%="goods"+i%>.jpg" border="0" width="100"></a></td>
			<td><%=single.getPrice()%></td>
		</tr>
		<%
				}
			}
		%>
		<tr height="70">
    		<td align="center" colspan="3">
        		<form action="shopdress.jsp" method="post">
		     		<input type="submit" value="查看购物车">
				</form>
    		</td>
    	</tr>	
	</table>
</body>
</html>