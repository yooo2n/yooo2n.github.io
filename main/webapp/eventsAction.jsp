<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="events.eventsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="events" class="events.events" scope="page" />
<jsp:setProperty name="events" property="eventname" />
<jsp:setProperty name="events" property="start" />	
<jsp:setProperty name="events" property="location" /> 
<jsp:setProperty name="events" property="datails" />
<jsp:setProperty name="events" property="end" /> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캘린더</title>
</head>
<body>
	<% // ---> 2.
		if (events.getEventname() == null || events.getStart() == null
			|| events.getLocation() == null || events.getDatails() == null || events.getEnd() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
				} else {  // ---> 3.
				eventsDAO eventsDAO = new eventsDAO();
			int result = eventsDAO.memo(events);
			if	(result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'login.jsp'");
				script.println("</script>");
			}	
			}
	%>
</body>
</html>