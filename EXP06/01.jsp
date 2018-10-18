<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>使用JSTL标签和fn函数</title>
</head>
<body>
	<c:set var="string1" value="My Name Is XYL."/>
	<c:set var="string2" value="My Id Is 092216139." />
	<p>字符串长度 (1) : ${fn:length(string1)}</p>
	<p>字符串长度 (2) : ${fn:length(string2)}</p>
</body>
</html>