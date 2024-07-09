<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>departmentpref page</title>
</head>
<body style="background-color:#DAAD86;">
<h1>Give Department Preference</h1>
<form name="l"  id="l"  method="Post"  action="DepartmentServlet.do">
	<table style="width:500px; height:350px;border: 1px solid black;text-align:center">
	
		<tr> 
			<th>Mobile Number(User ID) </th> 
			<td> <input type="number" name="uid" required min="1000000000" max="9999999999"/> </td>
		</tr>
		
		<tr> 
			<th>Department preference1</th> 
			<td> 
				<select name="Department preference1">
					<option>select</option>
					<option value="Chemical Engineering"> Chemical Engineering </option>
					<option value="Computer Science Engineering">Computer Science Engineering</option>
					<option value="Civil Engineering "> Civil Engineering  </option>
					<option value="Electronics and Communication Engineering">Electronics and Communication Engineering</option>
					<option value="Mechanical Engineering ">Mechanical Engineering </option>
				</select> 
			</td>
		</tr>	
		<tr> 
			<th>Department preference2</th> 
			<td> 
				<select name="Department preference2">
					<option>select</option>
					<option value="Chemical Engineering"> Chemical Engineering </option>
					<option value="Computer Science Engineering">Computer Science Engineering</option>
					<option value="Civil Engineering "> Civil Engineering  </option>
					<option value="Electronics and Communication Engineering">Electronics and Communication Engineering</option>
					<option value="Mechanical Engineering ">Mechanical Engineering </option>
				</select> 
			</td>
		</tr>	
		<tr> 
			<th>Department preference3</th> 
			<td> 
				<select name="Department preference3">
					<option>select</option>
					<option value="Chemical Engineering"> Chemical Engineering </option>
					<option value="Computer Science Engineering">Computer Science Engineering</option>
					<option value="Civil Engineering "> Civil Engineering  </option>
					<option value="Electronics and Communication Engineering">Electronics and Communication Engineering</option>
					<option value="Mechanical Engineering ">Mechanical Engineering </option>
				</select> 
			</td>
		</tr>	
		 
		<tr> 
			<th> <input type="submit" value="submit"/> </th> 
			<th> <input type="reset" value="clear"/> </th>
		</tr>
		</table>
			 
		 </form>
		 <h4>Go Back<a href="User.jsp"> click here </a></h4>
		 <h4>Go to Home Page<a href="index.jsp"> click here </a></h4>
</body>
</html>