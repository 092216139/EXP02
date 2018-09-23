<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '01.jsp' starting page</title>
    
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
  	tr{
  	line-height:40px;
  	}
  </style>
  <body>

    <h1>我的计算器</h1> 
    <hr>
    <form action="01.jsp" method="post">
     <table border="0">
       <tr>
       	<td>请输入第一个数：<input type="text" name="num1" value=""/></td>
       </tr>
       <tr>
       	<td>
       		请选择运算方式：<select name="operator">
              	 <option value="+" selected>+</option>
              	 <option value="-">-</option>
              	 <option value="*">*</option>
              	 <option value="/">/</option>
              </select>
       	</td>
       </tr>
       <tr>
       	<td>请输入第二个数：<input type="text" name="num2" value=""/></td>
       </tr>
       <tr>
       	<td>
       		<input type="submit" value="计算"/>&nbsp;&nbsp;
       		<input type="reset" value="重置"/>
       	</td>
       </tr>
     </table> 
    </form>
      	<%
    	String numString1=request.getParameter("num1");
    	String numString2=request.getParameter("num2");
    	String operator=request.getParameter("operator");
    	float num1=0,num2=0,result=0;
    	int i=0,j=0;
    	if(numString1==null){
    		out.print("第一个数不能为空!");
    		out.print("\n");
    	}
    	if(numString2==null){
    		out.print("第二个数不能为空!");
    		out.print("\n");
    	}
    	if(numString1!=null&&numString2!=null)
    	{
    		if(!numString1.matches("^[0-9]*$")||!numString2.matches("^[0-9]*$")){
    			out.print("输入的必须是数字!");
    			out.print("\n");
    		}
    		else{
    			num1=Float.parseFloat(numString1);
    			num2=Float.parseFloat(numString2);
    			if(operator.equals("+")){
    			result=num1+num2;
    			}
    			else if(operator.equals("-")){
    				result=num1-num2;
    			}
    			else if(operator.equals("*")){
    				result=num1*num2;
    			}
    			else if(operator.equals("/")){
    				if(num2==0){
    					out.print("除数不能为0!");
    				}
    				else{
    				result=num1/num2;
    				}
    			}
    		}
    	}
    	out.print("结果：");
     %><input type="text" value="<%=result%>"/>
  </body>
</html>
