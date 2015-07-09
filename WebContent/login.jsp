<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
</head>
<body>
<center><b><h1>Sign In</h1></b></center>
<form action="/Loginapp/loginServlet"  method ="post">
<table>
<tr><td>UserId/EmployeeId</td>
<td><input type="text" name="username" ></td>
</tr>
<br>
<tr>
<td>Password </td>
<td><input type="password" name="password"></td>
</tr>
<br>
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
<td><a href="/Java_Project/Forgotpassword.jsp">Forgot password</a>
</table>
</form>
</body>
</html>