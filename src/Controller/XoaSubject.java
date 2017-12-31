package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.SubjectsDAO;
import DAO.UsersDAO;

@WebServlet("/XoaSubject")
public class XoaSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XoaSubject() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
Connection conn = (Connection) DB.DBConnection.CreateConnection();
    	
    	int id = Integer.parseInt(request.getParameter("temp"));
		boolean kt = SubjectsDAO.XoaSubject(id, conn);
		
		if(kt)
		{
			System.out.println("xóa thành công");
		}
		RequestDispatcher rd = request.getRequestDispatcher("DisplaySubject");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
