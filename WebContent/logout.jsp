<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Logout | Coffee House</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="scripts" type="js" href="js/bootstrap.min.js" />
    <link rel="scripts" type="js" href="js/jQuery-2.1.3.min.js" />
</head>
<body>
<%
            session.setAttribute("userid", null);
            session.removeAttribute("userid");
            response.sendRedirect("login.jsp");
            %>

</body>
</html>