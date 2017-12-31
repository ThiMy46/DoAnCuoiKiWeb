package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.UsersDAO;
import DTO.User;



@WebServlet("/Them_SuaUser")
public class Them_SuaUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Them_SuaUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn =  (Connection) DB.DBConnection.CreateConnection();
		
		int UserID= Integer.parseInt(request.getParameter("temp"));
		User user1=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("Users", user1);
		
		
    	if(request.getParameter("UserCanSua")==null)
    	{
    		RequestDispatcher rd = request.getRequestDispatcher("listuser.jsp");
    		rd.forward(request, response);
    	}
    	else {
        	int id = Integer.parseInt(request.getParameter("UserCanSua"));
        	System.out.println("UserCanSua nhan duoc la"+id);

    		User user = UsersDAO.Display_1User(id, conn);
    		request.setAttribute("user", user);

    		RequestDispatcher rd = request.getRequestDispatcher("suauser.jsp");
    		rd.forward(request, response);
    	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
