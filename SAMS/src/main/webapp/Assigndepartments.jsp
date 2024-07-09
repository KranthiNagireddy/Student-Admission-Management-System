 <%@page import="model.DBConnection"%>
<%@page import="java.sql.*, java.util.*, java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign Department page</title>
</head>
<body style="background-color:#E27D60;">

<%
	Connection Con = null;
	response.setContentType("text/html");	 
	PrintWriter out1 = response.getWriter();
	out1.println("<h1>Assign students department based on your college guidelines</h1>");
	out1.println("<h2>Registered Student Details</h2>");
	try 
	{
	
	Con = DBConnection.cc();
	String 				 q      = "select * from studentregistration";
	
	PreparedStatement   Pstobj  =  Con.prepareStatement(q);		 
	ResultSet RS =  Pstobj.executeQuery();
	
	out1.println("<table width='60%' border='2'>");
	out1.println("<tr> <th>Student Name  </th><td>Mother Name </td>");
	out1.println("<td>Father Name </td><td>previous school name</td>");
	out1.println("<td>EAMCET percentage </td><td> Address</td>");
	out1.println("<td>Mobile No </td><td> Mail Id</td></tr>");
	
	while (RS.next())
	{ 
		out1.println("<tr> <td> " + RS.getString(1));			 
		out1.println(" <td> " + RS.getString(2));
		out1.println(" <td> " + RS.getString(3));
		out1.println(" <td> " + RS.getString(4));
		out1.println(" <td> " + RS.getLong(5));
		out1.println(" <td> " + RS.getString(6));
		out1.println(" <td> " + RS.getLong(7));
		out1.println(" <td> " + RS.getString(8));
		out1.println("</tr>"); 
	}
	out1.println("</table>");
	
	out1.println("<h2>Registered Student Department Preferences</h2>");
	String 	q1    = "select * from department";

	PreparedStatement   Pstobj1 =  Con.prepareStatement(q1);		 
	ResultSet RS1 =  Pstobj1.executeQuery();

	out1.println("<table width='60%' border='2'>");
	out1.println("<tr> <th>User Id</th><td>Department Preference1</td>");
	out1.println("<td>Department Preference2 </td><td>Department Preference3</td>");
	out1.println("<td>Allocated Department </td></tr>");
	List<Long> UIDs = new ArrayList<>();
	
	while (RS1.next())
	{ 
		out1.println("<tr> <td> " + RS1.getLong(1));			 
		out1.println(" <td> " + RS1.getString(2));
		out1.println(" <td> " + RS1.getString(3));
		out1.println(" <td> " + RS1.getString(4));
		out1.println(" <td> " + RS1.getString(5));
		if ( RS1.getString(5).equals("Not assigned")) 
			UIDs.add(RS1.getLong(1));
		out1.println("</tr>");
	}
	out1.println("</table>");  
	out1.println("The List of Students User Ids who is waiting for department allocation");
	if(UIDs.size()!=0)
	{
		
				
		out1.println("<form method='Get' action='DeptAllocate.do'>");		
		out1.println("<select name='nuid'>");
		for(Long id : UIDs){
			out1.println("<option value=" + id + ">" + id + " </option>");
		}
		out1.println("</select>");
		
		for(Long id : UIDs){
			String 	q2    = "select * from department where uid=?";
			PreparedStatement   Pstobj2 =  Con.prepareStatement(q2);
			Pstobj2.setLong(1, id);
			ResultSet RS2 =  Pstobj2.executeQuery();
			while (RS2.next()){
				out1.println("<select name='dept'>");
				out1.println("<option value=" +RS2.getString(2)+ ">" +RS2.getString(2) + " </option>");
				out1.println("<option value=" +RS2.getString(3) + ">" +RS2.getString(3) + " </option>");
				out1.println("<option value=" +RS2.getString(4) + ">" +RS2.getString(4) + " </option>");
				out1.println("</select>");
			}
		}
		
		
		out1.println("<input type='submit' value='Approve'/>"); 
		out1.println("</form>");
	}
	else{
		out1.println("there is no students in the queue");
	}
	
	out1.println("<h3>Go Back");
	out1.println("<a href="+"adminPage.jsp"+">Admin Page</a> ");
	out1.println("</h3>");
	}
	catch(Exception e)	{ out1.println(e);	}
%>

</body>
</html>