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
<title>学生成绩</title>
</head>
<body>
	<h2>请输入学生信息：</h2>
	<form action="01.jsp" method="post">
		<table>
			<tr>
				<td>姓名：</td>
				<td>
					<input type="text" name="stuname">
				</td>		
			</tr>
			<tr>
				<td>语文：</td>
				<td>
					<input type="text" name="chinese">
				</td>
			</tr>
			<tr>
				<td>数学：</td>
				<td>
					<input type="text" name="maths">
				</td>
			</tr>
			<tr>
				<td>英语：</td>
				<td>
					<input type="text" name="english">
				</td>
			</tr>
			<tr>
				<td>历史：</td>
				<td>
					<input type="text" name="history">
				</td>
			</tr>
			<tr>
				<td>生物：</td>
				<td>
					<input type="text" name="biology">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="提交">
				</td>
				<td>
					<input type="reset" value="重置">
				</td>
			</tr>
		</table>
		<%
			request.setCharacterEncoding("utf-8");
			float score[]=new float[5];
			String stuname=request.getParameter("stuname");
			String str1=request.getParameter("chinese");
			String str2=request.getParameter("maths");
			String str3=request.getParameter("english");
			String str4=request.getParameter("history");
			String str5=request.getParameter("biology");
			if(stuname!=null)
			{
				score[0]=Float.parseFloat(str1);
				score[1]=Float.parseFloat(str2);
				score[2]=Float.parseFloat(str3);
				score[3]=Float.parseFloat(str4);
				score[4]=Float.parseFloat(str5);
			}
			else{
				stuname=null;
			}
			pageContext.setAttribute("stuname", stuname);
			pageContext.setAttribute("score1", score[0]);
			pageContext.setAttribute("score2", score[1]);
			pageContext.setAttribute("score3", score[2]);
			pageContext.setAttribute("score4", score[3]);
			pageContext.setAttribute("score5", score[4]);
		%>
		${stuname}总分为：${score1+score2+score3+score4+score5}<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平均分为：${(score1+score2+score3+score4+score5)/5}
	</form>
</body>
</html>