<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Generation</title>
</head>
<body>
<a type="button" class="btn btn-warning" href="/CoffeeHouse/order.jsp">Next Order</a>
<h2>SM Coffee House </h2>
<h4>BILL</h4>
Your order:		
<table>
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
	out.println(array1[i]+"<br>");
	;
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
		out.println(Integer.parseInt(quantity)*130+"<br>");
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

</body>
</html>