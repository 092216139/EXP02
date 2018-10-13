<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
        String url="jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
        String username="root";
        String password="123456";
        Connection conn=DriverManager.getConnection(url,username,password);
        if(conn!=null){
            out.println("数据库连接成功！！！");
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }


%>
</body>
</html>