<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除帖子</title>
</head>
<body>
<%
	String postno=new String(request.getParameter("postno"));
	java.sql.Connection conn;
	java.sql.Statement stmt;
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Tzy794920512");
		stmt=conn.createStatement();
		String sql="delete from Posts where PostNo="+postno;
		stmt.execute(sql);
		stmt.close();
		conn.close();
		%>
		<script>
			alert("删除成功！");
			window.location.href = "database_manager.jsp";
		</script>
		<%
	}
	catch(java.sql.SQLException e)
	{
		out.println(e.toString());
	}
%>
</body>
</html>