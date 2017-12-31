package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.User;


public class UsersDAO {
	public static List<User> DisplayUser(Connection conn) {
		// Láº¥y ra káº¿t ná»‘i tá»›i cÆ¡ sá»Ÿ dá»¯ liá»‡u.
		
		List<User> Users = new ArrayList<User>();

		String sql = "select * from Users;";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				User user = new User();
				System.out.println("Da Vao DAO");
				
				user.setUserID(rs.getInt("UserID"));
				user.setUserName(rs.getString("UserName"));
				user.setUserPass(rs.getString("UserPass"));
				user.setDateOfBirth(rs.getDate("DateOfBirth"));
				user.setGender(rs.getInt("Gender"));
				user.setPhoneNumber(rs.getString("PhoneNumber"));
				user.setStateUser(rs.getInt("StateUser"));
				Users.add(user);
				System.out.println(user.getUserName());
				
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(Users.get(0).getUserID());
		return Users;
	}
	public static boolean InsertUsers( 
	 int UserID,
	 String UserPass,
	 String UserName,
	 Date DateOfBirth,
	 int Gender,
	 String PhoneNumber,
	 int StateUser, 
	 Connection conn) {
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call procThemUsers(?,?,?,?,?,?,?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, UserID);
			cstm.setString(2, UserPass);
			cstm.setString(3, UserName);
			cstm.setDate(4, DateOfBirth);
			cstm.setInt(5, Gender);
			cstm.setString(6, PhoneNumber);
			cstm.setInt(7, StateUser);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	public static boolean SuaUser(int UserID,
			 String UserPass,
			 String UserName,
			 Date DateOfBirth,
			 int Gender,
			 String PhoneNumber,
			 int StateUser, 
			 Connection conn) 
	{
		
		System.out.println("User ID nhan duoc la"+UserID);
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call procSuaUser(?,?,?,?,?,?,?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, UserID);
			cstm.setString(2, UserPass);
			cstm.setString(3, UserName);
			cstm.setDate(4, DateOfBirth);
			cstm.setInt(5, Gender);
			cstm.setString(6, PhoneNumber);
			cstm.setInt(7, StateUser);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	
	public static User Display_1User(int ID, Connection conn) {
		User user = new User();

		String sql = "select * from Users where UserID='"+ID+"'";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				
				user.setUserID(rs.getInt("UserID"));
				user.setUserName(rs.getString("UserName"));
				user.setUserPass(rs.getString("UserPass"));
				user.setDateOfBirth(rs.getDate("DateOfBirth"));
				user.setGender(rs.getInt("Gender"));
				user.setPhoneNumber(rs.getString("PhoneNumber"));
				user.setStateUser(rs.getInt("StateUser"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return user;
	}
	public static boolean XoaUser(int id, Connection conn) {
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call procXoaUser(?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, id);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	public static User Display_1UserTheoTK(String TaiKhoan,String MatKhau, Connection conn) {
		User user = new User();

		String sql="select user_typeuser.TypeUserID,users.UserID,UserName,UserPass,DateOfBirth,Gender,PhoneNumber,users.StateUser\r\n" + 
		" from users,user_typeuser where user_typeuser.UserID=users.UserID\r\n" + 
		"and UserName='"+TaiKhoan+"' and UserPass='"+MatKhau+"';";		
		
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			if(rs==null)
			{
				return user=null;
			}
			else
			{
				while (rs.next()) {
					
					user.setUserID(rs.getInt("UserID"));
					user.setUserName(rs.getString("UserName"));
					user.setUserPass(rs.getString("UserPass"));
					user.setDateOfBirth(rs.getDate("DateOfBirth"));
					user.setGender(rs.getInt("Gender"));
					user.setPhoneNumber(rs.getString("PhoneNumber"));
					user.setStateUser(rs.getInt("StateUser"));
					user.setMaQuyen(rs.getInt("TypeUserID"));
			
				}
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return user;
	}

	public static boolean DoiPass(int UserID,String OldPass,String NewPass,String NewPassAgain,  Connection conn) {
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call procDoiPass(?,?,?,?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, UserID);
			cstm.setString(2, OldPass);
			cstm.setString(3, NewPass);
			cstm.setString(4,  NewPassAgain);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
}



