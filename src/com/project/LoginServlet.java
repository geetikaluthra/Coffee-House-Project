package com.project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Authenticate;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username,Password,role;
		response.setContentType("text/html");
		Username=request.getParameter("username");
		Password=request.getParameter("password");
		role=request.getParameter("role");
		
		Authenticate loginservice=new Authenticate();
		boolean result=loginservice.authenticate(Username, Password,role);
		if(result){
			RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else{
			System.out.print(result);
			response.sendRedirect("login.jsp");
			
		}
   }
}	
	
