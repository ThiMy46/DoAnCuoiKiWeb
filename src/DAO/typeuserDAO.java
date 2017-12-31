package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.User;
import DTO.typeuser;

public class typeuserDAO {

	public static List<typeuser> Displaytypeusers(Connection conn) { {
		List<typeuser> typeusers = new ArrayList<typeuser>();

		String sql = "select * from typeuser;";
		try {
			// Tạo một đối tượng PreparedStatement. chắc thiếu thư viên gì r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				typeuser Typeusers = new typeuser();
				System.out.println("Da Vao DAO");
				
				Typeusers.setTypeUserID(rs.getInt("TypeUserID"));
				Typeusers.setTypeUserName(rs.getString("TypeUserName"));
				
				typeusers.add(Typeusers);
				System.out.println(Typeusers.getTypeUserID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(typeusers.get(0).getTypeUserID());
		return typeusers;
			}
	}

}
