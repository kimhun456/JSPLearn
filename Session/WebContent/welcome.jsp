<%@page import="java.util.Enumeration"%>
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
		Enumeration<String> enumeration = session.getAttributeNames();

		while (enumeration.hasMoreElements()) {
			String name = enumeration.nextElement().toString();
			String value = (String) session.getAttribute(name);

			out.println("name : " + name + "<br>");
			out.println("value : " + value);
			session.removeAttribute(name);
		}
	%>
</body>
</html>