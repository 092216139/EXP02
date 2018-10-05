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
<title>比较两个整数</title>
</head>
<body>
	<form action="02.jsp" method="post">
		<table>
			<tr>
				<td>请输入第一个整数：</td>	
				<td><input type="text" name="number1"></td>
			</tr>
			<tr>
				<td>请输入第二个整数：</td>
				<td><input type="text" name="number2"></td>	
			</tr>
			<tr>
				<td align="right"><input type="submit" value="提交"></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td>
			</tr>
		</table>
		<%
			String str1=request.getParameter("number1");
			String str2=request.getParameter("number2");
			int num1,num2;
			if(str1!=null&&str2!=null){
				num1=Integer.parseInt(str1);
				num2=Integer.parseInt(str2);
				pageContext.setAttribute("num1", num1);
				pageContext.setAttribute("num2", num2);
				if(num1==num2){%>
					${num1}等于${num2}
				<%}
				if(num1>num2){%>
					${num1}大于${num2}
				<%}
				if(num1<num2){%>
					${num1}小于${num2}
				<%}
			}
			else{
				num1=0;
				num2=0;
			}
		%>
	</form>
</body>
</html>