<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Home page for Admissions </title>
	<style>
		h1 
		{
			text-align:center;
			color  : white;
			left    :300px;
			
		}
		a{
			color  : black;	
			}
			h3{
		
			color  :white;	
			}
		
		#d
		{
			position:relative;
			float:left;
			color 	: #FF0000;
			top:250px;
			text-align: center;
			width:49%;
			 height:180px;
		}
		#d1
		{
			position:relative;
			float:right;
			color 	: #FFFFFF;
			top:230px;
			text-align: center;
			width:50%;
			 height:180px;
		}
		h2{
		color:white;}
		body {
		
		background-image:url("https://cache.careers360.mobi/media/article_images/2021/6/8/admission-featured-image.jpg");
		background-repeat : no-repeat;
         background-size : 1400px 700px;
        }
		

	    footer {
	    position:relative;
         text-align: center;
         top:400px;
          padding: 3px;
         color: black;
        }	
		
		
	</style>
</head>
<body>
<div>
	<h1> Admission for ABC University 2022<img src="images/logo.PNG" alt="logo image" width="50" height="50"> </h1>
	<br/>
	<marquee width="100%" direction="right" height="30px" style="color:red;">
		Important Notice: Last date for registration is 30-04-2022
	</marquee><br/> 
	</div>
	<p></p>
	
	
	<br>
	<div id="d"> 
			<h2> Welcome to Admissions 2022 </h2> 
			<h3 >	<a href="register.jsp">	Register </a> </h3>
			<h3>	<a href="login.jsp">Login </a> </h3>
			
	</div>
	<div id="d1"> 
			<h2> About University </h2> 
			<h3>	<a href="AboutCollege.jsp">	click here </a> </h3>
			<h2> Departments in ABC University </h2> 
			<h3>	<a href="departments.jsp">	click here </a> </h3>
	</div>
	<footer>
  <h4>Contact info</h4>
  <img src="images/logo.PNG" alt="logo image" width="100" height="100">
 <p>abc@gmail.com <br>
 010-999999
 </p>
</footer>
	
</body>
</html>