<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- HTML comment -->

	<%!int i = 10;
	String str = "ANCD";%>

	<%!public int sum(int a, int b) {
		return a + b;
	}%>
	<br />


	<%
		int[] iarr = { 10, 20, 30 };
		out.println(Arrays.toString(iarr));
		out.println(i);
		out.println(str);
		out.println(sum(1, 3));
		out.println("what is it?");
	%>

	<%=i%><br>
	<%=str%><br>
	<%=sum(1, 3)%><br>
	<%@ include file="HelloWorld.jsp"%>

</body>
</html>