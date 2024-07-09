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


@WebServlet("/RegisterServlet.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sname = request.getParameter("sname");
		String smname = request.getParameter("smname");
		String sfname = request.getParameter("sfname");
		String scname = request.getParameter("scname");
		long marks=Long.parseLong(request.getParameter("marks"));
		String saddress = request.getParameter("saddress");
		long id = Long.parseLong(request.getParameter("uid"));
		String smail = request.getParameter("smail");
		String sgender = request.getParameter("sgender");
		String pw = request.getParameter("pwd");
	 
	
		 response.setContentType("text/html");
		 
		  PrintWriter out = response.getWriter();
		try 
		{
			Connection C = DBConnection.cc();
			String  q      = "insert into  studentregistration ( student_Name, s_Mother_Name, s_Father_Name, previous_sn , percentage, studentAddress , studentMobile , studentMail, studentGender, password) values (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement   Pstobj  = C.prepareStatement(q);
			
			
			Pstobj.setString(1, sname);
			Pstobj.setString(2, smname);
			Pstobj.setString(3, sfname);
			Pstobj.setString(4, scname);
			Pstobj.setLong(5, marks);
			Pstobj.setString(6,  saddress);
			Pstobj.setLong(7, id);
			Pstobj.setString(8, smail);
			Pstobj.setString(9, sgender);
			Pstobj.setString(10, pw);
			int count  =  Pstobj.executeUpdate();
			if (count==1)
			{ 
				out.println(" You are successfully Registered\n");
				out.println("You can now login using your user Id(mobile number) and password");
				out.println("<h4><a href='index.jsp'>Go to Home page </a> </h4>");
				out.println("<h4><a href='login.jsp'>Go to Login page </a> </h4>");
			}
		} 
		
		catch (SQLException e ) {
			out.println(e);  
		} 
		
		
	
	}

}
