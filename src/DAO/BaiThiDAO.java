package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.BaiThi;
import DTO.User;
import DTO.exam;

public class BaiThiDAO {
	public static List<BaiThi> DisplayBaiThiTheoExamID(int ExamID, Connection conn) {
		List<BaiThi> BaiThis = new ArrayList<BaiThi>();

		String sql = "SELECT c.QuestionID,a.ExamName as TenBaiThi,a.ExamID as MaBaiThi,a.Time AS ThoiGian , c.QuestionContent as noiDung,\r\n" + 
				"c.OptionA, c.OptionB,c.OptionC,c.OptionD,c.Answer\r\n" + 
				"FROM exam AS a, test AS b, question AS c\r\n" + 
				"WHERE a.ExamID=b.ExamID\r\n" + 
				"  AND b.QuestionID = c.QuestionID\r\n" + 
				"	and a.ExamID='"+ExamID+"';";
		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				BaiThi baithi = new BaiThi();
				baithi.setQuestionID(rs.getInt("QuestionID"));
				baithi.setTenBaiThi(rs.getString("TenBaiThi"));
				baithi.setTime(rs.getInt("ThoiGian"));
				baithi.setNoiDung(rs.getString("noiDung"));
				baithi.setDapAnDung(rs.getInt("Answer"));
				baithi.setOptionA(rs.getString("OptionA"));
				baithi.setOptionB(rs.getString("OptionB"));
				baithi.setOptionC(rs.getString("OptionC"));
				baithi.setOptionD(rs.getString("OptionD"));
				baithi.setMaBaiThi(rs.getInt("MaBaiThi"));
				BaiThis.add(baithi);
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return BaiThis;
	}
}
