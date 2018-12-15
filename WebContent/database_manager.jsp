<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统管理员页面</title>
</head>
<body>
	<form action="" method="post">
		<input id="addUser"  type="submit" value="增加用户" onclick="javascript:this.form.action='add_user.jsp'"/>
        <input id="deleteUser" type="submit" value="删除用户" onclick="javascript:this.form.action='delete_user.jsp'"/><br/>
		<input id="modifyPost"  type="submit" value="修改帖子" onclick="javascript:this.form.action='modify_post.jsp'"/>
        <input id="deletePost" type="submit" value="删除帖子" onclick="javascript:this.form.action='delete_post.jsp'"/><br/>
        <input id="modifyReply"  type="submit" value="修改回复" onclick="javascript:this.form.action='modify_reply.jsp'"/>
        <input id="deleteReply" type="submit" value="删除回复" onclick="javascript:this.form.action='delete_reply.jsp'"/>
  	</form>
</body>
</html>