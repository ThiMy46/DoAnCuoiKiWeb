package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.Major;
import DTO.subjects;

public class MajorDAO {

	public static List<Major> DisplayMajor(Connection conn) { {
		List<Major> Majors = new ArrayList<Major>();

		String sql = "select * from major;";
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				Major Majorn = new Major();
				System.out.println("Da Vao DAO");
				
				Majorn.setMajorID(rs.getInt("MajorID"));
				Majorn.setMajorName(rs.getString("MajorName"));
				
				Majors.add(Majorn);
				System.out.println(Majorn.getMajorID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return Majors;
			}
	}
}
