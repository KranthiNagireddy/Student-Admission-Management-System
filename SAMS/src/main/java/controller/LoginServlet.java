package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;


@WebServlet("/LoginServlet.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("uid"));		
		String ro = request.getParameter("role");
		String pw = request.getParameter("pwd");
	 
		
		 response.setContentType("text/html");
		 
		  PrintWriter out = response.getWriter();
		try 
		{
			Connection C = DBConnection.cc();
			String  q      = "select * from  studentregistration where studentMobile= ? and  password=? and role=?";
			PreparedStatement   Pstobj  = C.prepareStatement(q);
			
			Pstobj.setLong(1, id);
			Pstobj.setString(2, pw);
			Pstobj.setString(3, ro);
			ResultSet RS =  Pstobj.executeQuery();
			if (RS.next())
			{
				out.println("You are logged in Successfully..");
				if (ro.equals("Admin"))
				{
					RequestDispatcher RD = request.getRequestDispatcher("adminPage.jsp");
					RD.forward(request, response);
				}
				 else if (ro.equals("Student"))				 
				{
					
						request.setAttribute("LS", "success");
						RequestDispatcher RD = request.getRequestDispatcher("User.jsp");
						RD.forward(request, response);						
										
				}
				
				//out.println("You are log in Details valid");
				//out.println("<a href='index.jsp'> Home Page </a>");			 	 
			}
			else
			{
				request.setAttribute("LErr", "Your log in Details are invalid");
				RequestDispatcher RD1 = request.getRequestDispatcher("login.jsp");
				RD1.forward(request, response);
			}
		}
		catch(Exception e)
		{
			
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		doGet(request, response);
	}

}
