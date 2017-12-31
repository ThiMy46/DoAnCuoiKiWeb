package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.ExamDAO;
import DAO.UsersDAO;
import DTO.User;
import DTO.exam;

@WebServlet("/Them_SuaExam")
public class Them_SuaExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Them_SuaExam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
Connection conn =  (Connection) DB.DBConnection.CreateConnection();
int UserID= Integer.parseInt(request.getParameter("temp"));
User user1=DAO.UsersDAO.Display_1User(UserID, conn);
request.setAttribute("Users", user1);
    	if(request.getParameter("ExamCanSua")==null)
    	{
    		RequestDispatcher rd = request.getRequestDispatcher("themexam.jsp");
    		rd.forward(request, response);
    	}
    	else {
        	int id = Integer.parseInt(request.getParameter("ExamCanSua"));
        	System.out.println("ExamCanSua nhan duoc la"+id);

    		exam exams = ExamDAO.Display_1Exam(id, conn);
    		request.setAttribute("exams", exams);

    		RequestDispatcher rd = request.getRequestDispatcher("suaexam.jsp");
    		rd.forward(request, response);
    	}
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
