<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>看帖</title>
</head>
<body>
<%
	int BlockNo = Integer.parseInt(request.getParameter("BlockNo"));
	//request.setCharacterEncoding("UTF-8");
	String BlockName = new String(request.getParameter("BlockName").getBytes("iso-8859-1"),"utf-8");
%>
<p><%=BlockName %></p>
</body>
</html>