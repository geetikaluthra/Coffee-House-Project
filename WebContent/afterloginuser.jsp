<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Login successful</h3>
<br>
<a href="recharge.jsp">Recharge your card</a>
<a href="logout.jsp">logout</a>
<br>
hello <%=session.getAttribute("username")%>!!!
<%
session.setMaxInactiveInterval(5);
%>
</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Login successful</h3>
<br>
<a href="recharge.jsp">Recharge your card</a>
<a href="logout.jsp">logout</a>
<br>
hello <%=session.getAttribute("username")%>!!!
<%
session.setMaxInactiveInterval(5);
%>
</body>
>>>>>>> origin/master
</html>