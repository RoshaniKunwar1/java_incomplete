<%@page import="database_related.connection.DB"%>
<%@ page import="database_related.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
		<% user auth = (user)request.getSession().getAttribute("auth");
	if(auth != null){
		response.sendRedirect("index.jsp");
		request.setAttribute("auth", auth);
	}
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
<%@ include file="includes/header.jsp"%>
</head>
<body>

<% out.println("Connection = "+DB.getConnection()); %>

<%@ include file="includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<!--width margin x and margin y -->
			<div class="card-header text-center">User Login</div>

			<div class="card-body">
				<form action="user-login1" method="post">

					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Enter your Email" required>
					</div>

					<div class="form-group">
						<label>password</label> <input type="password"
							class="form-control" name="login-password"
							placeholder="Enter your password" required>
					</div>

					<div class="text-center mt-4">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="includes/footer.jsp"%>

</body>
</html>