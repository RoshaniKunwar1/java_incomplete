<%@page import="database_related.dao.*"%>
<%@ page import="database_related.connection.*"%>
<%@ page import="database_related.model.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
user auth = (user) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

//productDao pd = new productDao(DB.getConnection());
//List<product> products = pd.getAllProducts();
//out.println(products);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<%@ include file="includes/header.jsp"%>
</head>
<body>
	<%@ include file="includes/navbar.jsp"%>

	<div class="container">
		<div class="card-header my-3">All products</div>
		<div class="row">

			<%
			//if (!products.isEmpty()) {
			//	for (product p : products) {
			//	out.println(p.getCategory());
			%>

			<div class="col-md-3">
				<!--  3*4cols = 12 -->
				<div class="card w-100" style="width: 18rem;">
					<!--  w = width  -->
					<img src="product_image/beauty.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<h6 class="price">Price: $452</h6>
						<h6 class="category">Category: some category</h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="#" class="btn btn-primary">Add to Cart</a> <a href="#"
								class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
				<%
			      	}
				}
				%>


			</div>
		</div>

	<%@ include file="includes/footer.jsp"%>

</body>
</html>