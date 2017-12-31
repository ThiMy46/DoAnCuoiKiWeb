package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.test;
import DTO.typeuser;

public class TestDAO {

	public static List<test> DisplayTest(Connection conn) { 
		List<test> tests = new ArrayList<test>();

		String sql = "select * from test;";
		try {
			// Tạo một đối tượng PreparedStatement. chắc thiếu thư viên gì r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				test Tests = new test();
				System.out.println("Da Vao DAO");
				
				Tests.setExamID(rs.getInt("ExamID"));
				Tests.setQuestionID(rs.getInt("QuestionID"));
				
				tests.add(Tests);
				System.out.println(Tests.getExamID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(tests.get(0).getExamID());
		return tests;
			}


	public static boolean InsertTest( 
			int QuestionID, 
			int ExamID,
			 
			 Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procThemTest(?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					cstm.setInt(1, QuestionID);
					cstm.setInt(2, ExamID);
					
					
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

