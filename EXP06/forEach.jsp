<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>使用forEach</title>
</head>
<body>
	<%
		Map<String,String> map = new LinkedHashMap<String,String>();
		map.put("百度","http://www.baidu.com/");
		map.put("雅虎","http://cn.yahoo.com/");
		map.put("谷歌","http://www.google.com/");
		request.setAttribute("map",map);
	%>
	<table style="text-align: center; width:800px; margin:40px auto;" border="1px" cellspacing="0" cellpadding="0">
		<c:forEach items="${map}" var="entry">
			<tr>
				<td><c:out value="${entry.key}"></c:out></td>
				<td><c:out value="${entry.value}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>