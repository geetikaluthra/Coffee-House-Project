<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Forget Password | Coffee House</title>
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
<h4>Password Recovery</h4>
<br>
<div class="container">
	<form role="form" action="/CoffeeHouse/LoginServlet"  method ="post">
		<div class="form-group">
		<label for="exampleInputField">UserId/EmployeeId</label>
		<input type="text" class="form-control" id="exampleInputField" placeholder="Enter Username" name="username" >
		</div>
		<div>
		<input class="btn btn-warning" type="submit" value="Forgot Password">
		</div>
	</form>
	</div>
<br>

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
</body>
</html>