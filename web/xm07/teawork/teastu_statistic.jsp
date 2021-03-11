<%@page contentType="text/html; charset=UTF-8"%>
<%
	String var=request.getParameter("work_id");
	String work_id = java.net.URLDecoder.decode(var,"UTF-8");
	response.sendRedirect("../statistic/teastu_statistic_query.jsp?work_id="+work_id);
%>