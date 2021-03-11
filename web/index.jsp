<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
	<head>

        <meta charset=http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>Login</h1>
            <form name="registerForm" action="testtodo.jsp">
                <input type="text" name="student_name" class="username" placeholder="Username">
                <input type="password" name="student_number" class="password" placeholder="Password">
<br>
<br>
<td align="center">
 <select  name="state" style="    width: 270px;
    height: 42px;
    margin-top: 25px;
    padding: 0 15px;
background: rgba(45,45,45,.15);
    border-radius: 6px;
    border: 1px solid rgba(255,255,255,.15);
    box-shadow: 0 2px 3px 0 rgba(0,0,0,.1) inset;
    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: #fff;
    text-shadow: 0 1px 2px rgba(0,0,0,.1);">
 <option   value="student">学生</option>
 <option   value="teacher">教师</option>
<option   value="admin">管理人员</option>
</select>
</td>
                <input type="submit" name="subbtn" value="Sign me in">
                <div class="error"><span>+</span></div>
            </form>
            
        </div>
        

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
		
	</body>
</html>