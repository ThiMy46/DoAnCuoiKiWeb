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

@WebServlet("/SuaExam")
public class SuaExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SuaExam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		//
		System.out.println("Da Vao Sua Exam");
		 int ExamID=Integer.parseInt(request.getParameter("ExamCanSua"));
		 
		 
		 
		 String ExamName= request.getParameter("ExamName");
	
		 int Amount=Integer.parseInt(request.getParameter("Amount"));
		 int Time=Integer.parseInt(request.getParameter("Time"));
		 int StateExam=Integer.parseInt(request.getParameter("StateExam"));
		 int SubjectID=Integer.parseInt(request.getParameter("SubjectID"));
		 
		
		 int UserID2= Integer.parseInt(request.getParameter("temp"));
			User user=DAO.UsersDAO.Display_1User(UserID2, conn);
			request.setAttribute("Users", user);
			
			boolean kt = ExamDAO.SuaExam(ExamID, ExamName, Amount, Time, StateExam, SubjectID, conn);
			if(kt==true) {
				System.out.println("Sua User thành công");
			}
			else
			{
				System.out.println("CO j do sai sai");
			}
			RequestDispatcher rd= request.getRequestDispatcher("DisplayExam");
			rd.forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
