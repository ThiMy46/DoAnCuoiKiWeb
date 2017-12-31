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
import DTO.exam;
import DTO.subjects;

public class ExamDAO {

	public static List<exam> DisplayExam(Connection conn) { {
		List<exam> exams = new ArrayList<exam>();

		String sql = "select * from exam;";
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				exam Exams = new exam();
				System.out.println("Da Vao DAO");
				
				Exams.setExamID(rs.getInt("ExamID"));
				Exams.setExamName(rs.getString("ExamName"));
				Exams.setAmount(rs.getInt("Amount"));
				Exams.setStateExam(rs.getInt("StateExam"));
				Exams.setTime(rs.getInt("Time"));
				Exams.setSubjectID(rs.getInt("SubjectID"));
				
				exams.add(Exams);
				System.out.println(Exams.getSubjectID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(exams.get(0).getSubjectID());
		return exams;
			}
	}
	public static boolean InsertExam( 
			 int ExamID,
			 String ExamName,
			 int Amount,
			 int Time,
			 int StateExam,
			 int SubjectID,
			 Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procThemExam(?,?,?,?,?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					cstm.setInt(1, ExamID);
					cstm.setString(2, ExamName);
					cstm.setInt(3, Amount);
					cstm.setInt(4, Time);
					cstm.setInt(5, StateExam);
					cstm.setInt(6, SubjectID);
					
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
			public static boolean SuaExam( int ExamID,
					 String ExamName,
					 int Amount,
					 int Time,
					 int StateExam,
					 int SubjectID,
					 Connection conn) 
			{
				
				System.out.println("ExamID nhan duoc la"+ExamID);
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procSuaExam(?,?,?,?,?,?)}";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
					CallableStatement cstm = conn.prepareCall(sql);
				
					cstm.setInt(1, ExamID);
					cstm.setString(2, ExamName);
					cstm.setInt(3, Amount);
					cstm.setInt(4, Time);
					cstm.setInt(5, StateExam);
					cstm.setInt(6, SubjectID);
					
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
			
			public static exam Display_1Exam(int ID, Connection conn) {
				exam exams = new exam();

				String sql = "select * from exam where ExamID='"+ID+"'";

				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
					PreparedStatement psmt = conn.prepareCall(sql);

					ResultSet rs = psmt.executeQuery();

					while (rs.next()) {

						
						exams.setExamID(rs.getInt("ExamID"));
						exams.setExamName(rs.getString("ExamName"));
						exams.setAmount(rs.getInt("Amount"));
						exams.setStateExam(rs.getInt("Time"));
						exams.setTime(rs.getInt("StateExam"));
						exams.setSubjectID(rs.getInt("SubjectID"));
						
					}

				} catch (SQLException e) {

					e.printStackTrace();
				}

				return exams;
			}
			public static boolean XoaExam(int id, Connection conn) {
				boolean t = false;

				// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
				String sql = "{call procXoaExam(?)}";

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
			public static List<exam> DisplayExamtheosubject(int ID,Connection conn) { {
				List<exam> exams = new ArrayList<exam>();

				String sql = "select * from exam where SubjectID="+ID+";";
				try {
					// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement. cháº¯c thiáº¿u thÆ° viÃªn gÃ¬ r
					PreparedStatement psmt = conn.prepareCall(sql);

					ResultSet rs = psmt.executeQuery();
					
					
					while (rs.next()) {
						exam Exams = new exam();
						System.out.println("Da Vao DAO");
						
						Exams.setExamID(rs.getInt("ExamID"));
						Exams.setExamName(rs.getString("ExamName"));
						Exams.setAmount(rs.getInt("Amount"));
						Exams.setStateExam(rs.getInt("StateExam"));
						Exams.setTime(rs.getInt("Time"));
						Exams.setSubjectID(rs.getInt("SubjectID"));
						
						exams.add(Exams);
						System.out.println(Exams.getSubjectID());
					}
					//System.out.println(user.setUserID(rs.getInt("UserID"));
				} catch (SQLException e) {

					e.printStackTrace();
				}
				System.out.println(exams.get(0).getSubjectID());
				return exams;
					}
			}
}
