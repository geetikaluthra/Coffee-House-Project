package com.project;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Username,Password,role,Gender,Mobile;
		
		
		Username=request.getParameter("userid");
		Gender=request.getParameter("gender");
		Mobile=request.getParameter("mobile");
		Password=request.getParameter("password");
		role=request.getParameter("role");	
	
	
	}

}
