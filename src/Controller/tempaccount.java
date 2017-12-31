package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBConnection;
import DTO.User;

@WebServlet("/tempaccount")
public class tempaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public tempaccount() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		int UserID= Integer.parseInt(request.getParameter("temp"));
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("Users", user);
		request.getRequestDispatcher("add_acount.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
