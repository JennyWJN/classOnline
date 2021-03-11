<%@page contentType="text/html; charset=UTF-8"%>
<%
	String work_id=request.getParameter("work_id");
	response.sendRedirect("../statistic/teawork_statistic_query.jsp");
%>