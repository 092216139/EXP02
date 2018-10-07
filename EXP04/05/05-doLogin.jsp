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
	<jsp:useBean id="usersLogin" class="Users.User"></jsp:useBean>
	<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
	<jsp:setProperty property="*" name="usersLogin"/>
	<%
		request.setCharacterEncoding("utf-8");
		if(userDao.userLogin(usersLogin)){
			session.setAttribute("User", usersLogin);
			//登录成功，跳转到显示成功信息页面05-loginsuccess.jsp
			request.getRequestDispatcher("05-loginsuccess.jsp").forward(request, response);
		}
		else{
			//登录失败，跳转到显示失败信息页面05-loginerror.jsp
			response.sendRedirect("05-loginerror.jsp");
		}
	%>
</body>
</html>