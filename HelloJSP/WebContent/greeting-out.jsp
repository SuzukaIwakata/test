<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>greeting-out</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<p>こんにちは、<%=request.getParameter("user") %>さん！</p>

</body>
</html>