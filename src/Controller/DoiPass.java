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

@WebServlet("/DoiPass")
public class DoiPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoiPass() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		
		
		int UserID= Integer.parseInt(request.getParameter("temp"));
		
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("Users", user);
		System.out.println("userid nhan dc laaaaaaaaaaa: "+UserID);
		
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

	
		request.setAttribute("user", user);
		request.getRequestDispatcher("changepass.jsp").forward(request, response);
		
		System.out.println("chuoi la" + conn);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
