<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body>
<a href="recharge.jsp"><h5>Recharge your card</h5></a>
<a href="logout.jsp"><h5>Logout</h5></a>
<img alt="" src="">
<button>Edit Picture</button>
<table>
	<tr>
		<td>Name :</td> 
		<td><%String name=(String)session.getAttribute("username");out.println(name); %></td>
	</tr>
	<tr>
		<td>Date of Birth:</td>
		<td></td>
	</tr>
	<tr>
	<td>Card Membership:</td>
	<td></td>
	</tr>
	
</table>
</body>
</html>