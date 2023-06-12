<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.member" scope="page"/>
<jsp:setProperty name="member" property="member_id" />
<jsp:setProperty name="member" property="member_pw" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		memberDAO memberDAO = new memberDAO();	// DAO 인스턴스 생성
		int result = memberDAO.login(member.getMember_id(), member.getMember_pw());
		if (result == 1) {
			session.setAttribute("member_id", member.getMember_id());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공.')");
			script.println("location.href = 'page1.jsp'");
			script.println("</script>");
		}
		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생헀습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	%>
</body>
</html>