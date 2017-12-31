package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SubjectsDAO;
import DAO.UsersDAO;
import DB.DBConnection;

@WebServlet("/ThemSubject")
public class ThemSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemSubject() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		//
		int SubjectID=Integer.parseInt(request.getParameter("SubjectID"));
		 
		 
		 System.out.println("In ra SubjectID"+SubjectID);
		 
		 String SubjectName= request.getParameter("SubjectName");
		 int MajorID=Integer.parseInt(request.getParameter("MajorID"));
		 try {
				boolean kt = SubjectsDAO.InsertSubject(SubjectID, SubjectName, MajorID, conn);
				if(kt==true) {
					System.out.println("Sua User thÃ nh cÃ´ng");
				}
				else
				{
					System.out.println("CO j do sai sai");
				}
				RequestDispatcher rd= request.getRequestDispatcher("DisplayUser");
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
