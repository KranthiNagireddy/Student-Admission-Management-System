package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection cc() throws SQLException
	{
		String  url = "jdbc:mysql://localhost:3306/sa_system";
		 String dbuser   = "root";
		 String dbuserpw = "#Daddy11";	
		 @SuppressWarnings("unused")
		Connection Con = null;
		return DriverManager.getConnection( url, dbuser, dbuserpw);
		
	}

}
