<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改帖子</title>
</head>
<body>
	<%
		String postno = new String(request.getParameter("postno"));
	%>
	<form action="" method="post">
		<label>标题：</label>
		<input name="title" type="text">
		<br/>		
		<label>内容：</label>
		<input name="content" type="text">
		<br/>
		<input name="postno" type="text" value="${postno}">
		<input id="submitButton"  type="submit" value="提交" onclick="javascript:this.form.action='modify_post_check.jsp'"/>
		<input id="backButton"  type="submit" value="返回" onclick="javascript:this.form.action='database_manager.jsp'"/>
  	</form>
</body>
</html>