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
import DTO.subjects;
import DTO.test;

public class SubjectsDAO {

	public static List<subjects> DisplaySubjects(Connection conn) { {
		List<subjects> subjectsss = new ArrayList<subjects>();

		String sql = "select * from subjects;";
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				subjects Subjects = new subjects();
				System.out.println("Da Vao DAO");
				
				Subjects.setMajorID(rs.getInt("MajorID"));
				Subjects.setSubjectID(rs.getInt("SubjectID"));
				Subjects.setSubjectName(rs.getString("SubjectName"));
				
				subjectsss.add(Subjects);
				System.out.println(Subjects.getSubjectID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(subjectsss.get(0).getSubjectID());
		return subjectsss;
			}
	}
	
	public static boolean InsertSubject( 
			 int SubjectID,
			 String SubjectName,
			 int MajorID,
			 Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procThemSubject(?,?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					cstm.setInt(1, SubjectID);
					cstm.setString(2, SubjectName);
					cstm.setInt(3, MajorID);
					
					
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
			public static boolean SuaSubject( int SubjectID,
					 String SubjectName,
					 int MajorID,
					 Connection conn) 
			{
				
				System.out.println("SubjectID nhan duoc la"+SubjectID);
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procSuaSubject(?,?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					cstm.setInt(1, SubjectID);
					cstm.setString(2, SubjectName);
					cstm.setInt(3, MajorID);
					
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
			
			public static subjects Display_1Subject(int ID, Connection conn) {
				subjects subjectsss = new subjects();

				String sql = "select * from subjects where SubjectID='"+ID+"'";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
					PreparedStatement psmt = conn.prepareCall(sql);

					ResultSet rs = psmt.executeQuery();

					while (rs.next()) {

						
						subjectsss.setSubjectID(rs.getInt("SubjectID"));
						subjectsss.setSubjectName(rs.getString("SubjectName"));
						subjectsss.setMajorID(rs.getInt("MajorID"));
						
						
					}

				} catch (SQLException e) {

					e.printStackTrace();
				}

				return subjectsss;
			}
			public static boolean XoaSubject(int id, Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procXoaSubject(?)}";

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
			public static List<subjects> Display_subjecttheomajor(int ID, Connection conn) {
				List<subjects> subjectsss = new ArrayList<subjects>();

				String sql = "select * from subjects where MajorID='"+ID+"';";
				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
					PreparedStatement psmt = conn.prepareCall(sql);

					ResultSet rs = psmt.executeQuery();
					
					
					while (rs.next()) {
						subjects Subjects = new subjects();
						System.out.println("Da Vao DAO");
						
						Subjects.setMajorID(rs.getInt("MajorID"));
						Subjects.setSubjectID(rs.getInt("SubjectID"));
						Subjects.setSubjectName(rs.getString("SubjectName"));
						
						subjectsss.add(Subjects);
						System.out.println(Subjects.getSubjectID());
					}
					//System.out.println(user.setUserID(rs.getInt("UserID"));
				} catch (SQLException e) {

					e.printStackTrace();
				}
				System.out.println(subjectsss.get(0).getSubjectID());
				return subjectsss;
					}
}
