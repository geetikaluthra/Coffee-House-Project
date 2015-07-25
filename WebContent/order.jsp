<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Place Order | Coffee House</title>
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
				<a href="#" class="navbar navbar-brand"><h4>Coffee House</h4></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout.jsp"><h5>Logout</h5></a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<div class="container">
<h3>Menu</h3>
<hr>
<div>
	<form role="form" class="form-group" action="/CoffeeHouse/OrderServlet" method="get">
		<table class="table table-hover">
			<thead>
				<tr>
				<th><h4>Sr. No.</h4></th>
				<th><h4>Items</h4></th>
				<th><h4>Quantity</h4></th>
				<th><h4>Rate</h4></th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<th scope="row">1</th>
				<td><label><div class="checkbox"><input type="checkbox" name="order" value="masalatea">Masala tea </div></label></td>
				<td><div><select class="form-control" name="quantity">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select></div></td>
				<td><div><label>Rs.50</label></div></td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td><label><div class="checkbox"><input type="checkbox" name="order" value="devilsown">Devil's Own </div></label></td>
				<td><div class="select"><select class="form-control" name="quantity1">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select></div></td>
				<td><label>Rs.130</label></td> 
			</tr>
			<tr>
				<th scope="row">3</th>
				<td><label><div class="checkbox"><input type="checkbox" name="order" value="Cappuccino">Cappuccino </div></label></td>
				<td><div class="select"><select class="form-control" name="quantity2">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select></div></td>
				<td><label>Rs.70</label></td>
			</tr>	
			<tr>
				<th scope="row">4</th>
				<td><label><div class="checkbox"><input type="checkbox" name="order" value="paneersandwich">Paneer sandwich </div></label></td>
				<td><div class="select"><select class="form-control" name="quantity3">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select></div></td>
				<td><label>Rs.120</label></td>
			</tr>		
			<tr>
				<th scope="row">5</th>
				<td><label><div class="checkbox"><input type="checkbox" name="order" value="chickensandwich">Chicken sandwich </div></label></td>
				<td><div class="select"><select class="form-control" name="quantity4">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select></div></td>
 				<td><label>Rs.145</label></td>
 			</tr>		
			</tbody>
		</table>
	
	<!-- For Navigation of menu -->
	<nav>
		<ul class="pager">
			<li><a class="inactive">Previous</a></li>
			<li><a href="#cold">Next</a></li>
		</ul>
	</nav>
	</div>
	<div class="pull-right">
			<input class="btn btn-primary" type="submit" value="Place Order" >
	</div>
	</form>
</div>
</div>
<div class="container">
<!-- About the developer -->
<footer>
	<div class="row">
	<br>    
    <div class="col">
    <div class="panel-footer"><center><blockquote class="blockquote">
    <p>Designed on Bootstrap and Coded on JSP.</p>
    <footer>Developed by: <a href="https://github.com/codegauravg">Gaurav Gunjan</a> &amp; <a href="https://github.com/geetikaluthra">Geetika Luthra</a></footer>
    </center></blockquote>
    </div>
    </div></div>
</footer></div>
</body>
</html>