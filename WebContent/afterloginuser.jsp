<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Welcome | Coffee House</title>
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
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="profile.jsp"><h5>Profile</h5></a></li>
					<li><a href="recharge.jsp"><h5>Recharge your card</h5></a></li>
					<li><a href="logout.jsp"><h5>Logout</h5></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
</header>
<h3>Login successful</h3>
<br>
<div class="container">
	<div class="panel panel-success">
		<div class="container-fluid">
			<label for="exampleInputField">Hello</label> <%=session.getAttribute("username")%>!!!
		</div>
	</div>
</div>
<%
session.setMaxInactiveInterval(5);
%>
<div class="container">
<footer>
	<div class="row">
        <div class="col-md-3">
        <h3>Developed with <span class="glyphicon glyphicon-heart"></span> by:</h3>
        </div>
        <div class="col-md-5"><img src="images/BrainyPeopleLogo.png" alt="Developer Logo" class="img-responsive" style="height:100px; width:380px;">
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