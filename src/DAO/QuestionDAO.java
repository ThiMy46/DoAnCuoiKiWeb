package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.exam;
import DTO.question;

public class QuestionDAO {

	public static List<question> DisplayQuestion(Connection conn) { {
		List<question> questions = new ArrayList<question>();

		String sql = "select * from question;";
		try {
			// Tạo một đối tượng PreparedStatement. chắc thiếu thư viên gì r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				question Question = new question();
				System.out.println("Da Vao DAO");
				
				Question.setQuestionID(rs.getInt("QuestionID"));
				Question.setSubjectID(rs.getInt("SubjectID"));
				Question.setQuestionContent(rs.getString("QuestionContent"));
				Question.setOptionA(rs.getString("OptionA"));
				Question.setOptionB(rs.getString("OptionB"));
				Question.setOptionC(rs.getString("OptionC"));
				Question.setOptionD(rs.getString("OptionD"));
				Question.setAnswer(rs.getInt("Answer")); 
				
				questions.add(Question);
				System.out.println(Question.getQuestionID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(questions.get(0).getSubjectID());
		return questions;
			}
	}
	public static List<question> DisplayQuestionThongQoaWxam(int ExamID,Connection conn) { {
		List<question> questions = new ArrayList<question>();

		String sql = "select question.QuestionID,QuestionContent,SubjectID,OptionA,OptionB,OptionC,OptionD,Answer from question,test\r\n" + 
				"where question.QuestionID=test.QuestionID and test.ExamID='"+ExamID+"';";
		try {
			// Tạo một đối tượng PreparedStatement. chắc thiếu thư viên gì r
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();
			
			
			while (rs.next()) {
				question Question = new question();
				System.out.println("Da Vao DAO");
				
				Question.setQuestionID(rs.getInt("QuestionID"));
				Question.setSubjectID(rs.getInt("SubjectID"));
				Question.setQuestionContent(rs.getString("QuestionContent"));
				Question.setOptionA(rs.getString("OptionA"));
				Question.setOptionB(rs.getString("OptionB"));
				Question.setOptionC(rs.getString("OptionC"));
				Question.setOptionD(rs.getString("OptionD"));
				Question.setAnswer(rs.getInt("Answer")); 
				
				questions.add(Question);
				System.out.println(Question.getQuestionID());
			}
			//System.out.println(user.setUserID(rs.getInt("UserID"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		System.out.println(questions.get(0).getSubjectID());
		return questions;
			}
	}

}
