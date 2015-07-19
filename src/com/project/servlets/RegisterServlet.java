<<<<<<< HEAD
<<<<<<< HEAD:src/com/project/RegisterServlet.java
package com.project;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Register;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Username,Password,Role,Gender,Mobile;
		String Bday;
		
		Bday=request.getParameter("bday");
		Username=request.getParameter("userid");
		Gender=request.getParameter("gender");
		Mobile=request.getParameter("mobile");
		Password=request.getParameter("password");
		Role=request.getParameter("role");	
		
		Register r=new Register(); 
		String idexist=r.useridexists(Username,Role);
		System.out.print(idexist);
		
		if(idexist.equalsIgnoreCase("false"))
		{
			boolean registerstatus=r.register_user(Username, Password, Role, Mobile, Gender, Bday);
			if(registerstatus)
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
			}
			else{
				System.out.print("there is some problem");
			}
		}
	
	
	}

}
=======
package com.project.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Register;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Username,Password,Role,Gender,Mobile;
		String Bday;
		
		Bday=request.getParameter("bday");
		Username=request.getParameter("userid");
		Gender=request.getParameter("gender");
		Mobile=request.getParameter("mobile");
		Password=request.getParameter("password");
		Role=request.getParameter("role");	
		
		Register r=new Register(); 
		String idexist=r.useridexists(Username);
		System.out.print(idexist);
		
		if(idexist.equalsIgnoreCase("false"))
		{
			boolean registerstatus=r.register_user(Username,  Mobile,Password,Bday,Gender,Role);
			System.out.print(registerstatus);
			if(registerstatus)
			{
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
				System.out.print("there is some problem");
			}
		}
		else{
			System.out.print("this id exists");
		}
	
	
	}

}
>>>>>>> origin/master:src/com/project/servlets/RegisterServlet.java
=======
package com.project.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Register;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Username,Password,Role,Gender,Mobile;
		String Bday;
		
		Bday=request.getParameter("bday");
		Username=request.getParameter("userid");
		Gender=request.getParameter("gender");
		Mobile=request.getParameter("mobile");
		Password=request.getParameter("password");
		Role=request.getParameter("role");	
		
		Register r=new Register(); 
		String idexist=r.useridexists(Username);
		System.out.print(idexist);
		
		if(idexist.equalsIgnoreCase("false"))
		{
			boolean registerstatus=r.register_user(Username,  Mobile,Password,Bday,Gender,Role);
			System.out.print(registerstatus);
			if(registerstatus)
			{
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
				System.out.print("there is some problem");
			}
		}
		else{
			System.out.print("this id exists");
		}
	
	
	}

}
>>>>>>> refs/remotes/origin/master
