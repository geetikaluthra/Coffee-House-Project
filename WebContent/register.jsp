<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.text.SimpleDateFormat" import="java.util.Date" import="java.text.ParseException"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register with us</title>
</head>
<body>
<a href="/CoffeeHouse/index.html ">Home</a>
<br>
<h2>Register With Us</h2>
<fieldset>
	<form action="/CoffeeHouse/RegisterServlet" method="post">
		<table>
			<tr>
				<td>UserId/EmployeeId</td>
				<td><input type="text" name="userid" placeholder="username"></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" placeholder="Contact No. for your offers"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" placeholder="password"></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="date" name="bday" ></td>
			</tr>
<%
//String expectedPattern = "MM/dd/yyyy";
//SimpleDateFormat formatter = new SimpleDateFormat(expectedPattern);

  // give the formatter a String that matches the SimpleDateFormat pattern
  //String userInput = request.getParameter("bday");
  //Date date = formatter.parse(userInput);
  //System.out.println("date is in correct format");
  
%>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" >Male</td>
				<td><input type="radio" name="gender" >Female</td>
			</tr>
			<tr>
				<td>You are </td>
				<td>
				<select name="role">
  					<option value="employee">Employee</option>
  					<option value="customer">Customer</option>
 				</select>
 				</td>
 			</tr>
			<tr>
				<td><input type="submit" value="Register" ></td>
			</tr>
		</table>
	</form>
</fieldset>
</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.text.SimpleDateFormat" import="java.util.Date" import="java.text.ParseException"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register with us</title>
</head>
<body>
<a href="/CoffeeHouse/index.html ">Home</a>
<br>
<h2>Register With Us</h2>
<fieldset>
	<form action="/CoffeeHouse/RegisterServlet" method="post">
		<table>
			<tr>
				<td>UserId/EmployeeId</td>
				<td><input type="text" name="userid" placeholder="username"></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" placeholder="Contact No. for your offers"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" placeholder="password"></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="date" name="bday" ></td>
			</tr>
<%
//String expectedPattern = "MM/dd/yyyy";
//SimpleDateFormat formatter = new SimpleDateFormat(expectedPattern);

  // give the formatter a String that matches the SimpleDateFormat pattern
  //String userInput = request.getParameter("bday");
  //Date date = formatter.parse(userInput);
  //System.out.println("date is in correct format");
  
%>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="male">Male</td>
				<td><input type="radio" name="gender" value="female">Female</td>
			</tr>
			<tr>
				<td>You are </td>
				<td>
				<select name="role">
  					<option value="employee">Employee</option>
  					<option value="customer">Customer</option>
 				</select>
 				</td>
 			</tr>
			<tr>
				<td><input type="submit" value="Register" ></td>
			</tr>
		</table>
	</form>
</fieldset>
</body>
>>>>>>> origin/master
</html>