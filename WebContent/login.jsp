<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
</head>
<body>
<a href="/CoffeeHouse/index.html ">Home</a>
<b><h2>Sign In</h2></b>
<fieldset>
	<form action="/CoffeeHouse/LoginServlet"  method ="post">
		<table>
			<tr><td>UserId/EmployeeId</td>
			<td><input type="text" name="username" ></td>
			</tr>
			<tr>
				<td>Password </td>
				<td><input type="password" name="password"></td>
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
			<td><input type="submit" value="login"></td>
			</tr>
			<tr>
			<td><a href="/CoffeeHouse/Forgotpassword.jsp">Forgot password</a>
		</table>
	</form>
</fieldset>
</body>
</html>