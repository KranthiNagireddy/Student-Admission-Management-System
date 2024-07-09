<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Online Book Store - Login Registration </title>

<style>
		h1 
		{
			position: absolute;
			color  : green;
			border : 3px dotted purple; 
			left    :500px;
		}
		#d2 {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 400px;
  width: 1000px;
  
}

#d3 {
  width: 200px;
  height: 350px;
  
}
		body
		{
			background-color : aqua;
		}
		
	</style>
	
</head>
<body>
	<h1> Admission Registration </h1>
	<br/><br/>	
<br/><br/>
	<br/><br/>
	 <div id="d1">
	
	 <img src="https://zestechinc.com/wp-content/uploads/2017/02/registration-600x338.jpg" alt="registration image" width="1300" height="500">
	
	</div> 
	<div id="d2">		
	<div id="d3">
	<form name="lr"  id="lr"  method="Post"  action="RegisterServlet.do">
	<table style="width:500px; height:350px;border: 1px solid black;text-align:center">
	     <tr> 
			<th>Student Name </th> 
			<td> <input type="text" name="sname" maxlength="20" /> </td>
		</tr>
		<tr> 
			<th>Mother Name </th> 
			<td> <input type="text" name="smname" maxlength="20" /> </td>
		</tr>
		<tr> 
			<th>Father Name </th> 
			<td> <input type="text" name="sfname" maxlength="20" /> </td>
		</tr>
		
		<tr> 
			<th>Previous school Name </th> 
			<td> <input type="text" name="scname" maxlength="20" /> </td>
		</tr>
		<tr> 
			<th>EAMCET exam percentage </th> 
			<td> <input type="number" name="marks" /> </td>
		</tr>
		
		<tr> 
			<th>Address </th> 
			<td> <input type="text" name="saddress" maxlength="20" /> </td>
		</tr>	
		<tr> 
			<th>Mobile Number(User ID) </th> 
			<td> <input type="number" name="uid" required min="1000000000" max="9999999999"/> </td>
		</tr>
		<tr> 
			<th>Mail address </th> 
			<td> <input type="text" name="smail" maxlength="20" /> </td>
		</tr>
		<tr> 
			<th>Select Gender</th> 
			<td> 
				<select name="gender">
					<option value="male"> Male     </option>
					<option value="Female">  Female </option>
				</select> 
			</td>
		</tr>	
		<tr> 
			<th>Enter password </th> 
			<td> <input type="password" name="pwd" required  maxlength="10" /> </td>
		</tr>
		
		 
		<tr> 
			<th> <input type="submit" value="register"/> </th> 
			<th> <input type="reset" value="clear"/> </th>
		</tr>
		</table>
			 
		 </form>
		 <h4>Go to Home Page<a href="index.jsp"> click here </a></h4>
		 <h4>Go to Login Page<a href="login.jsp"> click here </a></h4>
		 </div>
		 </div>	
	
	
	
</body>
</html>