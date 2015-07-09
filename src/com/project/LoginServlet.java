package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username,Password,role;
		response.setContentType("text/html");
		Username=request.getParameter("username");
		Password=request.getParameter("password");
		role=request.getParameter("role");
		if(role=="Employee")
		{
			try{
			
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","geetika157");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from Employee ");
					while(rs!=null && rs.next())
					{
						String id=rs.getString("username");
						String paswd=rs.getString("password");
						if(Username.equals(id))
						{
							if(paswd.equals(Password))
							{
								System.out.println("hello"+Username+"<br>"+"whats the order");
							}
							
						}
					}
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}
		else
		{
			try{
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","geetika157");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from Customer ");
				while(rs!=null && rs.next())
				{
					String id=rs.getString("username");
					String paswd=rs.getString("password");
					if(Username.equals(id))
					{
						if(paswd.equals(Password))
						{
							System.out.println("hello"+Username+"<br>"+"Avail our exciting surprises on your membership card");
						}
						
					}
				}	
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
		
	
	}

}
