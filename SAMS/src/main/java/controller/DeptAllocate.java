package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;


@WebServlet("/DeptAllocate.do")
public class DeptAllocate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeptAllocate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection C = DBConnection.cc();
			Long id = Long.parseLong(request.getParameter("nuid"));
			String dname = request.getParameter("dept");
			String sql = "update department set department=?"+"where uid=?";
			PreparedStatement PS =  C.prepareStatement(sql);
				PS.setString(1,dname);
				PS.setLong(2,id);
			PS.executeUpdate();		 
			RequestDispatcher RD = request.getRequestDispatcher("Assigndepartments.jsp");
			RD.forward(request, response);
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
