<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>
<%
	String userno=new String(request.getParameter("userno"));
	//String userno="";
	String password=new String(request.getParameter("password"));
	
	//out.print(userno);
	if(userno.equals("")||userno==null||password.equals("")||password==null){
		%>
		<script>
		alert("输入不能为空！");
		window.location.href="welcome.jsp";
		</script>
		<%
	}
	
	java.sql.Connection conn;
	java.sql.Statement stmt1;
	java.sql.Statement stmt2;
	java.sql.Statement stmt3;
	java.sql.Statement stmt4;
	java.sql.ResultSet rst1;
	java.sql.ResultSet rst2;
	java.sql.ResultSet rst3;
	java.sql.ResultSet rst4;
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=java.sql.DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mydb?serverTimezone=UTC", "root", "485769");
		stmt1=conn.createStatement();
		stmt2=conn.createStatement();
		stmt3=conn.createStatement();
		stmt4=conn.createStatement();
		String sql1= "select UserNo from Users where (UserNo="+userno+")and (Password='"+password+"')";
		String sql2= "select Password from Users where Userno='"+userno+"'";
		String sql3= "select DatabaseManagerNo from DatabaseManager where DatabaseManagerNo="+userno;
		String sql4= "select BlockManagerNo from BlockManager where BlockManagerNo="+userno;
		rst1=stmt1.executeQuery(sql1);
		rst2=stmt2.executeQuery(sql2);
		rst3=stmt3.executeQuery(sql3);
		rst4=stmt4.executeQuery(sql3);
		if(rst1.next())
		{
			//out.println("登录成功！");
			%>
			<%
			if (rst3.next())
			{
				%>
				<br> <a href="database_manager.jsp">管理员界面</a>
				<%
			}
			if (rst4.next())
			{
				%>
				<br> <a href="block_manager.jsp">版主界面</a>
				<%
			}
			%>
			<script>
				window.location.href="user.jsp";
			</script>
			<%
		}
		else if(rst2.next())
		{
			out.println("密码错误，请重新登录！");
			%>
			<br> <a href="welcome.jsp">返回登录</a>
			<%
		}
		else
		{
			out.println("用户名不存在，请注册！");	
			%>
			<br> <a href="register_page.jsp">前往注册</a>
			<br> <a href="welcome.jsp">返回登录</a>
			<%
		}
		rst1.close();
		rst2.close();
		rst3.close();
		rst4.close();
		stmt1.close();
		stmt2.close();
		stmt3.close();
		stmt4.close();
		conn.close();
	}
	catch(java.sql.SQLException e)
	{
		out.println(e.toString());
	}
%>
</body>
</html>