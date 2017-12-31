package DB;


import java.sql.*;

public class DBConnection {	
	public static Connection CreateConnection() {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/tracnghiemonline";
		String username ="root";
		String password="1234";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection(url,username,password);
			if(conn!= null) {
				System.out.println("Ket noi thanh cong");
			}
			//conn.close();
		}
		catch(ClassNotFoundException e) {
			System.out.println("Loi: "+e.getMessage());
		}
		catch(SQLException e) {
			System.out.println("Loi: "+e.getMessage());
		}
		return conn;
	}

	
	
}
