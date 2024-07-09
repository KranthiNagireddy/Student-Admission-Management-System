package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;


@WebServlet("/DepartmentServlet.do")
public class DepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DepartmentServlet() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		long id = Long.parseLong(request.getParameter("uid"));
		String d1 = request.getParameter("Department preference1");
		String d2 = request.getParameter("Department preference2");
		String d3 = request.getParameter("Department preference3");
	 
	
		 response.setContentType("text/html");
		 
		  PrintWriter out = response.getWriter();
		try 
		{
			Connection C = DBConnection.cc();
			String  q      = "insert into department (uid,dpt1,dpt2,dpt3) values (?,?,?,?)";
			PreparedStatement   Pstobj  = C.prepareStatement(q);
			
			
			Pstobj.setLong(1, id);
			Pstobj.setString(2,d1);
			Pstobj.setString(3,d2);
			Pstobj.setString(4,d3);
			
			int count  =  Pstobj.executeUpdate();
			if (count==1)
			{ 
				out.println("<body style="+"background-color:#5CDB95;"+">");
				out.println(" You are successfully Given your preferences.\n");
				out.println("You can check your admission result on result page");
				out.println("<h4><a href='departmentpref.jsp'>Go Back </a> </h4>");
				out.println("<h4><a href='User.jsp'>Go to User page </a> </h4>");
				out.println("<h4><a href='index.jsp'>Go to Home page </a> </h4>");
				out.println("</body>");
			}
		} 
		
		catch (SQLException e ) {
			out.println(e);  
		} 
		
	}

}
