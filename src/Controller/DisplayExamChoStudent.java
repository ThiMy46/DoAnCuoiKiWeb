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

@WebServlet("/DisplayExamChoStudent")
public class DisplayExamChoStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayExamChoStudent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		
		
		int UserID= Integer.parseInt(request.getParameter("temp"));
		
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		System.out.println("userid nhan dc laaaaaaaaaaa: "+UserID);
		// list.get(0).getUserID();
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		request.setAttribute("Users", user);
		int SubjectID= Integer.parseInt(request.getParameter("subjectid"));
		List<exam> exams = DAO.ExamDAO.DisplayExamtheosubject(SubjectID, conn);
		request.setAttribute("exams", exams);
		request.getRequestDispatcher("listexamcuastuden.jsp").forward(request, response);
		
		System.out.println("chuoi la" + conn);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
