<%@page contentType="text/html; charset=UTF-8"%>
<%String a = "student";
String urlA = "../stuwork/teacher_list.jsp";
String b = "teacher";
String urlB = "../teawork/teawork_list.jsp";
String m = (String) session.getAttribute("user_role");
if(m.equals(a)) {
response.sendRedirect(urlA);
}
if(m.equals(b)) {
response.sendRedirect(urlB);
}%>
<script >
</script>