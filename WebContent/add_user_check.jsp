<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加用户</title>
</head>
<body>
<%
	String userno=new String(request.getParameter("userno"));
	String username=new String(request.getParameter("username"));
	String gender=new String(request.getParameter("gender"));
	String age=new String(request.getParameter("age"));
	String birthday=new String(request.getParameter("birthday"));
	String password=new String(request.getParameter("password"));
	String email=new String(request.getParameter("email"));
	java.sql.Connection conn;
	java.sql.PreparedStatement stmt;
	java.sql.ResultSet rst;
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Tzy794920512");
		java.util.Calendar calendar=Calendar.getInstance();
		int year=calendar.get(Calendar.YEAR);
        int month=calendar.get(Calendar.MONTH) + 1;
        int day=calendar.get(Calendar.DAY_OF_MONTH);
		String localdate=year+"-"+(month<10?"0"+month:month)+"-"+(day<10?"0"+day:day);
		String sql2="insert into Users(UserName,Gender,Age,Level,Birthday,Password,Email,Regdate) values('"+username+"','"+gender+"',"+age+","+1+",'"+birthday+"','"+password+"','"+email+"','"+localdate+"')";
		stmt=conn.prepareStatement(sql2,PreparedStatement.RETURN_GENERATED_KEYS);
		stmt.executeUpdate(sql2,PreparedStatement.RETURN_GENERATED_KEYS);
		rst=stmt.getGeneratedKeys();
		rst.next();
		out.println("添加成功！账号是："+rst.getObject(1));
		%>
		<br> <a href="welcome.jsp">登录</a>
		<%
		rst.close();
		stmt.close();
		conn.close();
	}
	catch(java.sql.SQLException e)
	{
		out.println(e.toString());
	}
%>
</body>
</html>