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

@WebServlet("/XoaExam")
public class XoaExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XoaExam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DB.DBConnection.CreateConnection();
    	
    	int id = Integer.parseInt(request.getParameter("ExamCanXoa"));
		boolean kt = ExamDAO.XoaExam(id, conn);
		
		if(kt)
		{
			System.out.println("Xóa thành công");
		}
		RequestDispatcher rd = request.getRequestDispatcher("DisplayExam");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
