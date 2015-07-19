<<<<<<< HEAD
package com.project.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Register {
	String userid_exist="false";
	Boolean registration_success=false;
	PreparedStatement pstmt;
	Connection con;
	
	public String useridexists(String username)
	{
		
			try{
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from entries ");
				while(rs!=null && rs.next())
				{
					String id=rs.getString("username");
					if(id.equalsIgnoreCase(username))
					{
						userid_exist="true";
					}
				}
			} catch(Exception e) {
			System.out.println(e.getMessage());
			}
		
		
		return userid_exist;
	}
	
	public boolean register_user(String username,String mobile,String password,String dob,String gender,String role)
	{
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
			Statement st = con.createStatement();
			st.executeUpdate("insert into entries values('"+username+"','"+mobile+"','"+password+"','"+dob+"','"+gender+"','"+role+"')");
			registration_success=true;
			st.close();
		    con.close();
			
	} catch(Exception e) {
		System.out.println(e.getMessage());
	}
           
		return registration_success;
		
	}

}
=======
package com.project.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Register {
	String userid_exist="false";
	Boolean registration_success=false;
	PreparedStatement pstmt;
	Connection con;
	
	public String useridexists(String username)
	{
		
			try{
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from entries ");
				while(rs!=null && rs.next())
				{
					String id=rs.getString("username");
					if(id.equalsIgnoreCase(username))
					{
						userid_exist="true";
					}
				}
			} catch(Exception e) {
			System.out.println(e.getMessage());
			}
		
		
		return userid_exist;
	}
	
	public boolean register_user(String username,String mobile,String password,String dob,String gender,String role)
	{
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","coffeehouse","12345");
			Statement st = con.createStatement();
			st.executeUpdate("insert into entries values('"+username+"','"+mobile+"','"+password+"','"+dob+"','"+gender+"','"+role+"')");
			registration_success=true;
			st.close();
		    con.close();
			
	} catch(Exception e) {
		System.out.println(e.getMessage());
	}
           
		return registration_success;
		
	}

}
>>>>>>> origin/master
