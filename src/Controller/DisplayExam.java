package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBConnection;
import DTO.User;
import DTO.exam;
import DTO.subjects;

@WebServlet("/DisplayExam")
public class DisplayExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayExam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		List<exam> exams = DAO.ExamDAO.DisplayExam(conn);
		//System.out.println(exams.get(0).getSubjectID());
		// list.get(0).getUserID();

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		request.setAttribute("exams", exams);
		int UserID= Integer.parseInt(request.getParameter("temp"));
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("Users", user);
		request.getRequestDispatcher("listexam.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
