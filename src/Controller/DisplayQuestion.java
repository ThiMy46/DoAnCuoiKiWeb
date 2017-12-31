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
import DTO.question;

@WebServlet("/DisplayQuestion")
public class DisplayQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayQuestion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		List<question> questions = DAO.QuestionDAO.DisplayQuestion(conn);
		System.out.println(questions.get(0).getSubjectID());
		// list.get(0).getUserID();

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		
		
		int UserID= Integer.parseInt(request.getParameter("temp"));
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("Users", user);
		
		request.setAttribute("questions", questions);
		request.getRequestDispatcher("listquestion.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
