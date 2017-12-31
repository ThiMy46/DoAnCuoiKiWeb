package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import DTO.result;

public class ResultDAO {
	public static List<result> DisplayResult(int UserID,Connection conn) {
		List<result> Results = new ArrayList<result>();

		String sql = "select ExamName,SubjectName,Mark \r\n" + 
				"from result,exam,subjects\r\n" + 
				"where result.ExamID=exam.ExamID \r\n" + 
				"and exam.SubjectID=subjects.SubjectID and result.UserID='"+UserID+"';";
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

			result kq=new result();
			kq.setExamName(rs.getString("ExamName"));
			kq.setSubjectName(rs.getString("SubjectName"));
			kq.setMark(rs.getInt("Mark"));
			Results.add(kq);
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return Results;
	}
	
	
	public static boolean InsertResult( 
			 int UserID,
			 int ExamID,
			 int Mark,
			 Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procThemResult(?,?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					
					cstm.setInt(1, UserID);
					cstm.setInt(2, ExamID);
					cstm.setInt(3, Mark);
					
					
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
