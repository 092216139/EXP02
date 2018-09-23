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
	<jsp:useBean id="myDress" class="com.toolsBean.ShopDress" scope="session"/>
	<% 
		ArrayList buyList=myDress.getBuyList();
		float total=0;	
		int count=0;
	%>
	<table cellspacing="0" cellpadding="0">
		<tr height="50"><td colspan="7" align="center"><h2 color="blue">您的购物车</h2></td></tr>
		<tr align="center" height="30" bgcolor="#e6caff">
			<th width="25%">名称</th>
			<th>图片</th>
			<th>价格(元)</th>		
			<th colspan="3">数量</th>	
			<th>总价(元)</th>
		</tr>
		<%	if(buyList==null||buyList.size()==0){ %>
		<tr height="100"><td colspan="7" align="center">您的购物车为空！</td></tr>
		<% 
			}
			else{
				for(int i=0;i<buyList.size();i++){
					GoodsSingle single=(GoodsSingle)buyList.get(i);
					String name=single.getName();	
					float price=single.getPrice();	
					int num=single.getCount();				
					float money=price*num;	
					total+=money;	
					if(num!=1)
						count+=num;
					else
						count++;
		%>
		<tr align="center" height="50">
			<td><%=name%></td>
			<td>
        	<%     
        	int j;
        	ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");
        	for(j=0;j<goodsList.size();j++){					
				GoodsSingle temp=(GoodsSingle)goodsList.get(j);		
				if(temp.getName().equals(name)){				
					break;											
				}
			}
        	%>
        	<img src="images/<%="goods"+j%>.jpg" width="100">
        	</td>
			<td><%=price%></td>
			<td width="30" align="right">
           		<form action="dodress.jsp?action=remove&name=<%=single.getName()%>" method="post">
		     		<input type="submit" value="-" style="border:none;">
		   		</form>
			</td>
			<td  width="30">
           	<%=num%>
        	</td>
        	<td width="30" align="left">
           		<form action="dodress.jsp?action=addbuy&name=<%=single.getName()%>" method="post">
		     		<input type="submit" value="+" style="border:none;">
		   		</form>
        	</td>
        	<td><%=money%></td>
		</tr>
		<%							
				}
			}
		%>
		<tr height="50" align="center">
			<td colspan="7">
				<font color="red">
					购物车中共有<%=count %>件商品，结算：
					<font size="5">￥<%=total%>元</font>
				</font>
			</td>
		</tr>
		<tr height="50" align="center">
			<td colspan="2">
			<form action="showgoods.jsp" method="post">
		     	<input type="submit" value="继续购物">
			</form>
			</td>
			<td colspan="5">
			<form action="dodress.jsp?action=clear" method="post">
		     	<input type="submit" value="清空购物车">
			</form>
			</td>
		</tr>				
	</table>
</body>
</html>