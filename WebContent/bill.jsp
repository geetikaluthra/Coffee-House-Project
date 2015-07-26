<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bill Generation | Coffee House</title>
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
					<li><a href="order.jsp"><h5>Next Order</h5></a></li>
					<li><a href="logout.jsp"><h5>Logout</h5></a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<div class="container">
<div class="panel">
<h2>SM Coffee House </h2>
<h4>BILL</h4>
Your order:		
<table class="table">
<tr>
<td>Items  </td>
<td>Quantity</td>
<td>Amount</td>
</tr>
<tr>
<td><%
String[] array = (String[])session.getAttribute( "myArray" );
for(int i=0;i<array.length;i++)
{
	out.println(array[i]+"<br>");	
}
%></td>
<td>
<%
String[] array1 = (String[])session.getAttribute( "myArray1" );
for(int i=0;i<array.length;i++)
{
	if(array[i].equalsIgnoreCase("masalatea"))
		out.println(array1[i]+"<br>");
	if(array[i].equalsIgnoreCase("devilsown"))
		out.println(array1[i]+"<br>");
	if(array[i].equalsIgnoreCase("Cappuccino"))
		out.println(array1[i]+"<br>");
	if(array[i].equalsIgnoreCase("paneersandwich"))
		out.println(array1[i]+"<br>");
	if(array[i].equalsIgnoreCase("chickensandwich"))
		out.println(array1[i]+"<br>");
}
%></td>
<td><%
for(int i=0;i<array.length;i++)
{
	String quantity=array1[0];
	String quantity1=array1[1];
	String quantity2=array1[2];
	String quantity3=array1[3];
	String quantity4=array1[4];
	if(array[i].equalsIgnoreCase("masalatea"))
		out.println(Integer.parseInt(quantity)*50+"<br>");
	if(array[i].equalsIgnoreCase("devilsown"))
		out.println(Integer.parseInt(quantity1)*130+"<br>");
	if(array[i].equalsIgnoreCase("Cappuccino"))
		out.println(Integer.parseInt(quantity2)*70+"<br>");
	if(array[i].equalsIgnoreCase("paneersandwich"))
		out.println(Integer.parseInt(quantity3)*120+"<br>");
	if(array[i].equalsIgnoreCase("chickensandwich"))
		out.println(Integer.parseInt(quantity4)*145+"<br>");
}
 %></td>
</tr>

</table>
 
Your Total amount due is:
<%=session.getAttribute("Amount")%>!!!

</div>
</div>

</body>
</html>