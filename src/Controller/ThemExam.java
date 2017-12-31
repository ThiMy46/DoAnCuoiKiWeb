package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ExamDAO;
import DAO.UsersDAO;
import DB.DBConnection;
import DTO.User;
import DTO.question;

@WebServlet("/ThemExam")
public class ThemExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemExam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		//
		int UserID = Integer.parseInt(request.getParameter("temp"));
		
		int ExamID=Integer.parseInt(request.getParameter("ExamID"));
		 String ExamName= request.getParameter("ExamName");
	
		 int Amount=Integer.parseInt(request.getParameter("Amount"));
		 int Time=Integer.parseInt(request.getParameter("Time"));
		 int StateExam=Integer.parseInt(request.getParameter("StateExam"));
		 int SubjectID=Integer.parseInt(request.getParameter("SubjectID"));
		try {
			
	
			boolean kt = ExamDAO.InsertExam(ExamID, ExamName, Amount, Time, StateExam, SubjectID, conn);
			if(kt==true) {
				System.out.println("insert User thành công");
			}
			User user=DAO.UsersDAO.Display_1User(UserID, conn);
			
			List<question> questions=DAO.QuestionDAO.DisplayQuestion(conn);
			
			request.setAttribute("user", user);
			request.setAttribute("Users", user);
			request.setAttribute("ExamID", ExamID);
			request.setAttribute("questions", questions);
		
			RequestDispatcher rd= request.getRequestDispatcher("ThemCauHoiVaoExam.jsp");
			
			rd.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
