package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.DBConnection;


@WebServlet("/ProfileServlet.do")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Connection Con = null;
		 response.setContentType("text/html");	 
		 PrintWriter out1 = response.getWriter();
		 
		try 
		{
			long id = Long.parseLong(request.getParameter("uid"));
			Con = DBConnection.cc();
			String 				 q      = "select * from studentregistration where studentMobile=?";
			
			PreparedStatement   Pstobj  =  Con.prepareStatement(q);		 
			Pstobj.setLong(1, id);
			ResultSet RS =  Pstobj.executeQuery();
			out1.println("<body style="+"background-color:#E27D60;"+"color:white;"+">");
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
			out1.println("<h3>Go Back");
			out1.println("<a href="+"profile.jsp"+">Profile Page</a> ");
			out1.println("</h3>");
			out1.println("</body>");
		}
		catch(Exception e)	{ out1.println(e);	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
