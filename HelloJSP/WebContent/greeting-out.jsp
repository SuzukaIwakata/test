<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greenting-out</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");%>
	<P>こんにちは、<%=request.getParameter("user") %>さん！</P>
</body>
</html>