<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login Page | Coffee House</title>
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
<b><h2>Sign In</h2></b>
	<div class="container">
	<form role="form" action="/CoffeeHouse/LoginServlet"  method ="post">
		<div class="form-group">
		<label for="exampleInputField">UserId/EmployeeId</label>
		<input type="text" class="form-control" id="exampleInputField" placeholder="Enter Username" name="username" >
		</div>
		<div>
		<label for="exampleInputPassword1">Password</label>
		<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password"></input>
		</div>
		<div class="form-group">
		<label for="exampleInputField">You are</label>
		<select class="form-control" name="role">
  					<option value="employee">Employee</option>
  					<option value="customer">Customer</option>
 		</select>
		</div>		
		<input class="btn btn-success" type="submit" value="Login">
		<a type="button" class="btn btn-warning" href="/CoffeeHouse/Forgotpassword.jsp">Forgot password</a>
	</form>
	</div>
<br>
<div class="container">
<footer>
	<div class="row">
        <div class="col-md-3">
        <h3>Developed with <span class="glyphicon glyphicon-heart"></span> by:</h3>
        </div>
        <div class="col-md-5"><img src="images/BrainyPeopleLogo.png" alt="Developer Logo" class="img-responsive" style="height:150px; width:450px;">
        </div>
    </div>
    <br>    
    <div class="row">
    <div class="panel-footer"><center><blockquote class="blockquote">
    <p>Designed on Bootstrap and Coded on JSP.</p>
    <footer>Developed by: <a href="https://github.com/codegauravg">Gaurav Gunjan</a> &amp; <a href="https://github.com/geetikaluthra">Geetika Luthra</a></footer>
    </center></blockquote>
    </div>
    </div>
</footer></div>
</body>
</html>