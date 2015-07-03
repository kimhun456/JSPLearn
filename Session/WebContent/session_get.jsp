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
		Object obj1 = session.getAttribute("name");
		String name = (String) obj1;
		out.println(name + "<br>");

		obj1 = session.getAttribute("num");
		Integer num = (Integer) obj1;
		out.println(num + "<br>");

		out.println("******************<br>");

		String sName;
		String sValue;
		Enumeration<String> enumeration = session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");

		}

		out.println("****************<br>");

		String sessionID = session.getId();
		out.print("sessionID : " + sessionID + "<br>");
		int sessioninter = session.getMaxInactiveInterval();
		out.println("sessionInter : " + sessioninter + "<br>");

		out.println("*****************<br>");

		session.removeAttribute("name");
		Enumeration<String> enumeration2 = session.getAttributeNames();
		while (enumeration2.hasMoreElements()) {
			sName = enumeration2.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName = " + sName + "<br>");
			out.println("sValue = " + sValue + "<br>");
		}

		out.println("******************<br>");

		session.invalidate();

		if (request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

</body>
</html>