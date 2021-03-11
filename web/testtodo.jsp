<%@page contentType="text/html; charset=UTF-8"
	import="java.text.*,java.sql.*,java.io.*"%>
<%
	
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String student_name = request.getParameter("student_name");
			String student_number = request.getParameter("student_number");
			String state=request.getParameter("state");
			String user_name="";
			request.setCharacterEncoding("UTF-8");
			out.println(student_name);
			out.println(student_number);
			out.println(state);
			//链接数据库，加载jdbc的驱动com.mysql.jdbc.Driver
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException classnotfoundexception) {
				//如果有异常就抛出
				classnotfoundexception.printStackTrace();
			}
			try {
				//链接数据库，IP地址是localhost，端口是3306，账号和密码是ylx，这些都可以更改
				Connection conn = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/test?user=ylx&password=ylx&useUnicode=true&characterEncoding=UTF-8");
				Statement statement = conn.createStatement();
				out.println("Connect Database Ok！！！");
				//执行查询语句，返回结果集
				ResultSet rs = statement
						.executeQuery("select *  from xm07_menber where user='"+student_name+"' and password='"+student_number+"' and authority='"+state+"'" );
				//如果查询有结果，则循环显示查询出来的记录
				int flag=1;
				while (rs.next()) {
					flag=0;
					user_name=rs.getString("user_name");
				}
				//加个断行
				out.println("<br>");
				if(flag==1)
				{out.println("用户不存在");}
				else
				{

					session.setAttribute("user_role",state);
					session.setAttribute("user_name",user_name);
					session.setAttribute("user_id",student_name);
					session.setAttribute("user_avatar","assets/module/img/security/user/avatar.jpg");
					session.setAttribute("unit_db_name","test");
					session.setAttribute("wechat_server_address","www.cdylx.com");
				}
				statement.close();
				conn.close();
				out.println("Database Closed！！！");
			} catch (SQLException sqlexception) {
				sqlexception.printStackTrace();
			}
		%>
		
	</body>
</html>
<script  type="text/javascript">
	window.onload=function()
	{
		window.location.href="home/main/index.jsp";
	}
</script >  
