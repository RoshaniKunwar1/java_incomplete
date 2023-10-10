<%@ page import="database_related.connection.*" %>
<%@ page import="database_related.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<% user auth = (user)request.getSession().getAttribute("auth");
	if(auth != null){
		request.setAttribute("auth", auth);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart page</title>
<%@ include file="includes/header.jsp" %>
</head>
<body>
<%@ include file="includes/navbar.jsp" %>

<%@ include file="includes/footer.jsp" %>
</body>
</html>