<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		session.setAttribute("name", "hyun");
		session.setAttribute("num", 1234);
		session.setAttribute("age", 12);
	%>

	<a href="session_get.jsp">session get</a>

</body>
</html>