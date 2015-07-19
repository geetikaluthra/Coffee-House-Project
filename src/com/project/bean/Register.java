package com.project.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class Register {
	String userid_exist="false";
	Boolean registration_success=false;
	PreparedStatement pstmt;
	Connection con;
	
	public String useridexists(String username,String role)
	{
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
					if(id.equalsIgnoreCase(username))
					{
						userid_exist="true";
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
					if(id.equalsIgnoreCase(username))
					{
						userid_exist="true";
					}
				}
			} catch(Exception e) {
			System.out.println(e.getMessage());
			}
			
		}
		return userid_exist;
	}
	
	public boolean register_user(String username,String password,String role,String mobile,String gender,String dob)
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","geetika157");
			Statement st = con.createStatement();
            pstmt = ((Connection) st).prepareStatement("insert into login_details values(?,?,?,?)");
            pstmt.setString(1, null);
            pstmt.setString(2, username);
            pstmt.setString(3, password);
            pstmt.setString(4, role);
            int i = pstmt.executeUpdate();
            if (i > 0) {
                System.out.println("User information successfully added to database");
            }
            registration_success = true;
        } catch (SQLException | ClassNotFoundException ex) {
        	System.out.println("Exception caught is = " + ex);  
        } finally {
            try {
                if (con != null) {
                    con.close();
                    System.out.println("Connection Terminated");
                }
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (SQLException e) {
                System.out.println("Exception caught is = " + e);
            }
        }
		return registration_success;
		
	}

}
