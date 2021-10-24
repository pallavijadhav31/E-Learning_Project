package com.learning.connectorServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learning.model.Admin;

@WebServlet(urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Insize servlet Admin");
		
		String adminName="";
		String adminPassword="";
		String adminId="";
		try {
			adminName = request.getParameter("username");
			adminPassword = request.getParameter("adminpass");
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
				
		Admin admin=new Admin();
		if(adminId.equals(admin.getAdminId()) && adminName.equals(admin.getAdminName()) 
				&& adminPassword.equals(admin.getAdminPassword())) {
			RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");  
	        rd.forward(request, response);  
		}else {
			request.setAttribute("errorMessage", "Invalid UserName or Passoword");
	        response.sendRedirect("Admin.jsp");
		}
	}
}