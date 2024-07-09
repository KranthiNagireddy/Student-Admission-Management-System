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


@WebServlet("/ResultServlet.do")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ResultServlet() {
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
			String 				 q      = "select department from department where uid=?";
			
			PreparedStatement   Pstobj  =  Con.prepareStatement(q);		 
			Pstobj.setLong(1, id);
			ResultSet RS =  Pstobj.executeQuery();
			out1.println("<body style="+"background-color:#E27D60;"+"color:white;"+">");
			
			
			while (RS.next())
			{ 
				if(RS.getString(1).equals("Not assigned")) {
					out1.println("Your results not yet updated. Check after Two working days");
				}
				else {
					out1.println("Congratulations");
					out1.println("Your admission into ABC University is Successfull");
					out1.println("Your allocated department is"+RS.getString(1));
				}
			}
			  
			out1.println("<h3>Go Back");
			out1.println("<a href="+"User.jsp"+">User Page</a> ");
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
