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


@WebServlet("/XoaUser")
public class XoaUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XoaUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DB.DBConnection.CreateConnection();
    	
    	int id = Integer.parseInt(request.getParameter("UserCanXoa"));
		boolean kt = UsersDAO.XoaUser(id, conn);
		
		if(kt)
		{
			System.out.println("Xóa thành công");
		}
		RequestDispatcher rd = request.getRequestDispatcher("DisplayUser");
		rd.forward(request, response);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
