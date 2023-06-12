<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="member.member" scope="page" />
<jsp:setProperty name="member" property="member_name" />
<jsp:setProperty name="member" property="member_id" />	
<jsp:setProperty name="member" property="member_pw" />
<jsp:setProperty name="member" property="member_email" /> 
<jsp:setProperty name="member" property="member_address" />
<jsp:setProperty name="member" property="member_tell" /> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%	// ---> 2.
		if (member.getMember_name() == null || member.getMember_id() == null || member.getMember_pw() == null
			|| member.getMember_email() == null || member.getMember_address() == null || member.getMember_tell() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {  // ---> 3.
			memberDAO memberDAO = new memberDAO();
			int result = memberDAO.join(member);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else  {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'login.jsp'");
				script.println("</script>");
			}	
		}
	%>
</body>
</html>