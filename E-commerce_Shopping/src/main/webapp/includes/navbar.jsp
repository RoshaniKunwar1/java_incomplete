<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp">E-Commerce Shopping Cart</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
						
						<% 
						
						if(auth != null){   %>
							<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
							<li class="nav-item"><a class="nav-link" href="user-logout">Logout</a></li>
				
					<% 	}else{ %>			
							<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
					<% }%>		 
					
					</ul></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
	</div>
</nav>