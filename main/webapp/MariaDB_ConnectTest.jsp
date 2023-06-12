<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MariaDB 연결 드라이브 테스트</title>
</head>
<body>
	<h1>MariaDB 연결 드라이브 테스트</h1>
	<%
		String jdbcUrl = "jdbc:mariadb://localhost:3306/apple_tree";
		String dbId = "root";
		String dbPwd = "green1234";
		
		try
		{
			Class.forName("org.mariadb.jdbc.Driver");
			Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
			out.println("MariaDB 연결 성공");
		}
		catch (Exception ex)
		{
			out.println("연결오류: " + ex.getMessage());
		}
	%>
</body>
</html>