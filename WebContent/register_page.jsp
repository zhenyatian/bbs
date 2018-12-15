<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<style type="text/css">
input[type="text"]
{
	width:150px;
	margin-bottom:10px;
}
input[type="date"]
{
	width:150px;
	margin-bottom:10px;
}
input[type="password"]
{
	width:150px;
	margin-bottom:10px;
}
input[type="email"]
{
	width:150px;
	margin-bottom:10px;
}
.list
{
	width:150px;
	margin-bottom:10px;
}
.center {text-align:center}
.pos_right {position:relative; left:40px}
</style>
</head>
<body>
	<form action="" method="post" class="center">
		<label>昵称：</label>
		<input name="username" type="text">
		<br/>
		<label>性别：</label>
		<select name="gender" class="list">
		<option value="male">男</option>
		<option value="female">女</option>
		</select>
		<br/>		
		<label>生日：</label>
		<input name="birthday" type="date">
		<br/>
		<label>密码：</label>
		<input name="password" type="password">
		<br/>
		<label>邮箱：</label>
		<input name="email" type="email">
		<br/>
		<input id="submitButton"  type="submit" value="提交" onclick="javascript:this.form.action='register.jsp'"/>
		<input id="return"  class="pos_right" type="button" value="返回" onclick="javascript:location.href='welcome.jsp'"/>
  	</form>
</body>
</html>