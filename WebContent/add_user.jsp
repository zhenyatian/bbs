<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加用户</title>
</head>
<body>
	<form action="" method="post">
		<label>账号：</label>
		<input name="userno" type="text">
		<br/>
		<label>用户名称：</label>
		<input name="username" type="text">
		<br/>
		<label>性别：</label>
		<input name="gender" type="text">
		<br/>
		<label>年龄：</label>
		<input name="age" type="text">
		<br/>
		<label>生日：</label>
		<input name="birthday" type="text">
		<br/>
		<label>密码：</label>
		<input name="password" type="password">
		<br/>
		<label>邮箱：</label>
		<input name="email" type="text">
		<br/>
		<input id="submitButton"  type="submit" value="提交" onclick="javascript:this.form.action='add_user_check.jsp'"/>
		<input id="backButton"  type="submit" value="返回" onclick="javascript:this.form.action='database_manager.jsp'"/>
  	</form>
</body>
</html>