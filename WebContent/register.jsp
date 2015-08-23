<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.text.SimpleDateFormat" import="java.util.Date" import="java.text.ParseException"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Register | Coffee House</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="scripts" type="js" href="js/bootstrap.min.js" />
    <link rel="scripts" type="js" href="js/jQuery-2.1.3.min.js" />
</head>
<body>
<header>
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
				</button>
				<a href="/CoffeeHouse/index.html" class="navbar navbar-brand"><h4>Coffee House</h4></a>
			</div>
		</div>
	</nav>
	
</header>
<div class="container-fluid">
<h2>Register With Us</h2>
<hr>
<div class="container">
	<div class="panel">
	<form class="form" action="/CoffeeHouse/RegisterServlet" method="post">
		<div class="form-group">
		<label for="exampleInputField">UserId/EmployeeId</label>
		<input type="text" class="form-control" id="exampleInputField" placeholder="Enter Username" name="userid" >
		</div>
		<div class="form-group">
		<label for="exampleInputField">Mobile</label>
		<input type="text" class="form-control" id="exampleInputField" placeholder="Contact No. for your offers" name="mobile" >
		</div>
		<div class="form-group">
		<label for="exampleInputPassword1">Password</label>
		<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password"></input>
		</div>	
		<div class="form-group">
		<label for="exampleInputDate">Date of Birth</label>
		<input type="date" class="form-control" id="exampleInputDate" placeholder="Month/Day/Year" name="bday"></input>
		</div>
		<%
//String expectedPattern = "MM/dd/yyyy";
//SimpleDateFormat formatter = new SimpleDateFormat(expectedPattern);

  // give the formatter a String that matches the SimpleDateFormat pattern
  //String userInput = request.getParameter("bday");
  //Date date = formatter.parse(userInput);
  //System.out.println("date is in correct format");
  
%>
		<div class="form-group">
		<label for="exampleInputGender">Gender&nbsp;</label>
		<input type="radio" name="gender" value="male">&nbsp;Male&nbsp;<input type="radio" name="gender" value="female">&nbsp;Female
		</div>
		<div class="form-group">
		<label for="exampleInputRole">You are : &nbsp;</label>
		<select class="form-control" name="role">
  			<option value="employee">Employee</option>
  			<option value="customer">Customer</option>
 		</select>
		</div>
		<div class="form-group">
		<input class="btn btn-success" type="submit" value="Register" >
		</div>
		<br>
	</form>
</div></div>
<div class="container">
<footer>
	
    <div class="row">
    <div class="panel-footer"><center><blockquote class="blockquote">
    <p>Designed on Bootstrap and Coded on JSP.</p>
    <footer>Developed by: <a href="https://github.com/codegauravg">Gaurav Gunjan</a> &amp; <a href="https://github.com/geetikaluthra">Geetika Luthra</a></footer>
    </center></blockquote>
    </div>
    </div>
</footer></div>
</div>
</body>
</html>