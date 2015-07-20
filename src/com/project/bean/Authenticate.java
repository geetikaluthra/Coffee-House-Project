package com.project.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Authenticate {
	
	boolean authentication_status=false;
	
	public boolean authenticate(String username,String password,String role)
	
	{
		if(password==null || password.trim()=="")
		{
			System.out.println("check your password");
			return false;
		}
		else
		{		
		  if(role.equalsIgnoreCase("Employee"))
		  {
			try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from entries ");
					while(rs!=null && rs.next())
					{
						String id=rs.getString("username");
						String paswd=rs.getString("password");
						if(username.equalsIgnoreCase(id))
						{
							if(paswd.equals(password))
							{
								System.out.println("hello"+username+"<br>"+"whats the order");
								authentication_status=true;
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
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from entries");
				while(rs!=null && rs.next())
				{
					String id=rs.getString("username");
					String paswd=rs.getString("password");
					if(username.equalsIgnoreCase(id))
					{
						if(paswd.equals(password))
						{
							System.out.println("hello"+username+"<br>"+"Avail our exciting surprises on your membership card");
							authentication_status=true;
						}
						
					}
				}
			
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
			
	  }
	return authentication_status;	
  }
}