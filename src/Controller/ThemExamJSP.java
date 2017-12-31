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
import DTO.result;
import DTO.subjects;

@WebServlet("/ThemExamJSP")
public class ThemExamJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemExamJSP() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int UserID=Integer.parseInt(request.getParameter("temp"));
		
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		List<subjects> sub=DAO.SubjectsDAO.DisplaySubjects(conn);
		request.setAttribute("sub", sub);
		request.setAttribute("Users", user);
		request.getRequestDispatcher("add_exam.jsp").forward(request, response);
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
