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

@WebServlet("/DisplayUser")
public class DisplayUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DisplayUser() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		List<User> Users = DAO.UsersDAO.DisplayUser(conn);
		System.out.println(Users.get(0).getGender());
		// list.get(0).getUserID();
		
		 
		 
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int UserID2= Integer.parseInt(request.getParameter("temp"));
		User user=DAO.UsersDAO.Display_1User(UserID2, conn);
		request.setAttribute("Users", user);
		
		request.setAttribute("listUsers", Users); 
		request.getRequestDispatcher("listuser.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);
		// request.getRequestDispatcher("/WEB-INF/NewFile.jsp").forward(request,
		// response); máy ông k có thanh debug k bt sao tìm lỗi đây,
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
