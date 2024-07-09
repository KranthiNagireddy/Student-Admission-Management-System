<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>result page</title>
</head>
<body style="background-color:#83677B;">
<h1>Welcome to Result Page</h1>
<form name="l"  id="l"  method="Post"  action="ResultServlet.do">

<h2>Mobile Number(User ID)  
			 <input type="number" name="uid" required min="1000000000" max="9999999999"/> 
</h2>
</form>
	<h3>Go Back
	<a href="User.jsp">User Page</a> </h3>
	<h3>Go to Home page 
	<a href="index.jsp"> Home Page</a> </h3> 
</body>
</html>