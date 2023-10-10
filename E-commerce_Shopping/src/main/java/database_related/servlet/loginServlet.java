package database_related.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import database_related.connection.DB;
import database_related.dao.userDao;
import database_related.model.user;

       @WebServlet("/user-login1")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("login-email");
			String password = request.getParameter("login-password");	
			userDao udao = new userDao(DB.getConnection());
			user user = udao.userlogin(email, password);
			
			if(user != null) {
				out.print("user-login");
				response.sendRedirect("index.jsp");
				request.getSession().setAttribute("auth", user);  
			}
			else {
				out.println("user-login failed");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
