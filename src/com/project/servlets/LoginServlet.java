<<<<<<< HEAD
<<<<<<< HEAD:src/com/project/LoginServlet.java
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
			if(role.equalsIgnoreCase("Employee")){
				RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
			}
			else{
			RequestDispatcher dispatcher=request.getRequestDispatcher("afterloginuser.jsp");
			dispatcher.forward(request, response);
			}
		}
		else{
			System.out.print(result);
			response.sendRedirect("login.jsp");
			
		}
   }
}	
	
=======
package com.project.servlets;

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
		String Username,Password,Role;
		response.setContentType("text/html");
		Username=request.getParameter("username");
		Password=request.getParameter("password");
		Role=request.getParameter("role");
		
		Authenticate loginservice=new Authenticate();
		boolean result=loginservice.authenticate(Username, Password,Role);
		System.out.println(result);
		if(result){
			if(Role.equalsIgnoreCase("Employee")){
				request.getSession().setAttribute("username", Username);
				response.sendRedirect("success.jsp");
				
			}
			else{
				request.getSession().setAttribute("username", Username);
				response.sendRedirect("afterloginuser.jsp");
			}
		}
		else{
			System.out.print(result);
			response.sendRedirect("login.jsp");
			
		}
   }
}	
	
>>>>>>> origin/master:src/com/project/servlets/LoginServlet.java
=======
package com.project.servlets;

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
		String Username,Password,Role;
		response.setContentType("text/html");
		Username=request.getParameter("username");
		Password=request.getParameter("password");
		Role=request.getParameter("role");
		
		Authenticate loginservice=new Authenticate();
		boolean result=loginservice.authenticate(Username, Password,Role);
		System.out.println(result);
		if(result){
			if(Role.equalsIgnoreCase("Employee")){
				request.getSession().setAttribute("username", Username);
				response.sendRedirect("success.jsp");
				
			}
			else{
				request.getSession().setAttribute("username", Username);
				response.sendRedirect("afterloginuser.jsp");
			}
		}
		else{
			System.out.print(result);
			response.sendRedirect("login.jsp");
			
		}
   }
}	
	
>>>>>>> refs/remotes/origin/master
