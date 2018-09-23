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
<body>
	<jsp:useBean id="usersLogin" class="com.Users"></jsp:useBean>
	<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
	<jsp:setProperty property="*" name="usersLogin"/>
	<%
		if(userDao.userLogin(usersLogin)){
			session.setAttribute("username", usersLogin.getUsername());
			//登录成功，跳转到显示成功信息页面07-loginsuccess.jsp
			request.getRequestDispatcher("07-loginsuccess.jsp").forward(request, response);
		}
		else{
			//登录失败，跳转到显示失败信息页面07-loginerror.jsp
			response.sendRedirect("07-loginerror.jsp");
		}
	%>
</body>
</html>