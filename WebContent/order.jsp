<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>place your order</title>
</head>
<body>
<h4>Menu</h4>
<fieldset>
	<form action="/CoffeeHouse/OrderServlet" method="get">
		<table>
			<tr>
				<td>Items</td>
				<td>Quantity</td>
				<td>Rate</td>
			</tr>
			<tr>
				
				<td><input type="checkbox" name="order" value="masalatea">Masala tea </td>
				<td><select name="quantity">
					<option value="0">0</option>
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
				</select></td>
				<td><label for="50">Rs.50</label></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="order" value="devilsown">Devil's Own</td>
				<td><select name="quantity1">
					<option value="0">0</option>
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
				</select></td>
				<td>Rs.130</td> 
			</tr>
			<tr>
				<td><input type="checkbox" name="order" value="Cappuccino">Cappuccino</td>
				<td><select name="quantity2">
					<option value="0">0</option>
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
				</select></td>
				<td>Rs.70</td>
			</tr>	
			<tr>
				<td><input type="checkbox" name="order" value="paneersandwich">Paneer sandwich</td>
				<td><select name="quantity3">
					<option value="0">0</option>
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
				</select></td>
				<td>Rs.120</td>
			</tr>		
			<tr>
				<td><input type="checkbox" name="order" value="chickensandwich">Chicken sandwich </td>
				<td><select name="quantity4">
					<option value="0">0</option>
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
				</select></td>
 				<td>Rs.145</td>
 			</tr>		
			<tr>
				<td><input type="submit" value="Order" ></td>
			</tr>
		</table>
	</form>

</fieldset>

</body>
</html>