<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.valueBean.GoodsSingle" %>
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
	<jsp:useBean id="myDress" class="com.toolsBean.ShopDress" scope="session"/>
	<%
		String action=request.getParameter("action");
		if(action==null)
			action="";	
		if(action.equals("buy")){
			String type=request.getParameter("buy");
	    	if(MyTools.toChinese(type).equals("加入购物车"))	    {
           		ArrayList goodslist=(ArrayList)session.getAttribute("goodsList");	
           		int id=MyTools.strToint(request.getParameter("id"));		
		   		GoodsSingle single=(GoodsSingle)goodslist.get(id);
		   		myDress.addItem(single);
	%>
    <jsp:forward page="goods.jsp">
    	<jsp:param name="goods" value="<%=id%>"/>
    </jsp:forward>
	<%
	    	}
	    	else if(MyTools.toChinese(type).equals("查看购物车"))	    {
	    		response.sendRedirect("shopdress.jsp");
	    	}
	    	else{
	    		response.sendRedirect("showgoods.jsp");
	    	}
		}
		else if(action.equals("addbuy")){
			String name=request.getParameter("name");
			myDress.addItem(name);	
			response.sendRedirect("shopdress.jsp");		
		}
		else if(action.equals("remove")){
			String name=request.getParameter("name");
			myDress.removeItem(name);	
			response.sendRedirect("shopdress.jsp");		
		}
		else if(action.equals("clear")){
			myDress.clearCar();
			response.sendRedirect("shopdress.jsp");
		}
		else{
			response.sendRedirect("showgoods.jsp");		
		}
	%>
</body>
</html>