<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Bill Generation</title>
</head>
<body>
<h4>BILL</h4><br>
Your Total amount due is:
<%=session.getAttribute("Amount")%>!!!

</body>
</html>