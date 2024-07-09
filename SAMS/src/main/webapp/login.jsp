<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body{
background-color:LightGray;}
table{position:absolute;
text-align:center;}
#d2 {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 400px;
  width: 1000px;
  
}

#d3 {
  width: 500px;
  height: 350px;
  
}

</style>
</head>
<body><div id="d2">
<div id="d3">
	<h1> Welcome to Admissions 2022<img src="images/logo.PNG" alt="logo image" width="40" height="40"> </h1>	
	<h2> Login Page </h2>
	 
	<form name="lr"  id="lr"  method="Post"  action="LoginServlet.do">
	<table style="width:700px; border: 1px solid black">	
		<tr style="height:40px"> 
			<th>Enter user ID(Mobile Number) </th> 
			<td> <input type="number" name="uid" required min="1000000000" max="9999999999"/> </td>
		</tr> 
		
		<tr style="height:40px"> 
			<th>Select Your Role</th> 
			<td> 
				<select name="role">
					<option value="Student"> Student     </option>
					<option value="Admin">    Administration </option>
				</select> 
			</td>
		</tr>
		
				
		<tr style= "height:40px"> 
			<th>Enter password </th> 
			<td> <input type="password" name="pwd" required  maxlength="10"/> </td>
		</tr>
		
		 
		<tr style="height:40px"> 
			<th> <input type="submit" value="Login"/> </th> 
			<th> <input type="reset" value="clear"/> </th>
		</tr>
		</table>
			 
		 </form>
		 
		 </div>
		 </div>
		 <h4>Go to Home Page<a href="index.jsp"> click here </a></h4>
</body>

</html>