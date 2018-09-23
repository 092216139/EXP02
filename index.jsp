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
<body>
	<%!
		static ArrayList goodsList = new ArrayList();
		static{
			String[] name={"女士服饰","女士鞋","男士服饰","男士鞋"};
			String[] product={"连衣裙   雪纺裙   碎花裙   卫衣裙   女针织衫",
					"女士帆布鞋   鱼嘴鞋   高跟鞋   坡跟鞋   女士人字拖",
					"男士夹克   男士西装   男士T恤   男士羊绒衫   男士工装裤",
					"男士皮鞋   男士运动鞋   男士帆布鞋   男士增高鞋   男士人字拖"};
			float[] price={230f,120f,210f,100f};
			for(int i=0;i<4;i++){
				GoodsSingle single=new GoodsSingle();
				single.setName(name[i]);
				single.setProduct(product[i]);
				single.setCount(i);
				single.setPrice(price[i]);
				goodsList.add(i,single);
			}
		}
	%>
	<%
		session.setAttribute("goodsList", goodsList);
		response.sendRedirect("showgoods.jsp");
	%>
</body>
</html>