<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="student" class="net.amicom.Student" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name" name="student" value="Hyunjae" />
	<jsp:setProperty property="studentNum" name="student" value="12" />
	<jsp:setProperty property="age" name="student" value="6" />
	<jsp:setProperty property="grade" name="student" value="7" />

	name :
	<jsp:getProperty property="name" name="student" /><br>
	number :
	<jsp:getProperty property="studentNum" name="student" /><br>
	age :
	<jsp:getProperty property="age" name="student" /><br>
	grade :
	<jsp:getProperty property="grade" name="student" /><br>


</body>
</html>