<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%!Connection connection;
	Statement statement;
	ResultSet resultSet;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost/jsp"; // 사용하려는 데이터베이스명을 포함한 URL 기술
	String id = "root"; // 사용자 계정
	String pw = "vhrlgnghl456"; // 사용자 계정의 패스워드%>

	<%
		try {

			Class.forName(driver); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
			connection = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.
			//out.println("connection Success"); // 커넥션이 제대로 연결되면 수행된다.
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from member");

			while (resultSet.next()) {
				String id = resultSet.getString("id");
				String pw = resultSet.getString("pw");
				String name = resultSet.getString("name");
				String phone = resultSet.getString("phone");

				out.println("id : " + id + " pw : " + pw + " name :" + name + " phone : " + phone + "<br>");
			}

		} catch (Exception e) { // 예외가 발생하면 예외 상황을 처리한다.
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (statement != null)
					statement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
			}
		}
	%>

</body>
</html>