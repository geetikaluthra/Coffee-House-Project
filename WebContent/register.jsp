<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register with us</title>
</head>
<body>
<br>
<h4>Register With Us</h4>
<form action="" method="post">
<table>
<tr>
<td>UserId/EmployeeId</td>
<td><input type="text" name="userid" placeholder="username"></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="emailid" placeholder="Email-id"></td>
</tr>
<tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" placeholder="password"></td>
</tr>
<tr>
<td>Date of Birth</td>
<td><input type="date" name="bday" ></td>
</tr>
<td>Gender</td>
<td><input type="radio" name="gender" >Male</td>
<td><input type="radio" name="gender" >Female</td>
</tr>
<tr>
<td>You are </td>
<td>
<select>
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
</body>
</html>