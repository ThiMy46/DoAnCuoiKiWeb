package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBConnection;
import DTO.User;

@WebServlet("/TestDoiPass")
public class TestDoiPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestDoiPass() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		
		
		int UserID= Integer.parseInt(request.getParameter("temp"));
	
		String OldPass=request.getParameter("OldPass");
		String NewPass=request.getParameter("NewPass");
		String NewPassAgain=request.getParameter("NewPassAgain");
		boolean t=DAO.UsersDAO.DoiPass(UserID, OldPass, NewPass, NewPassAgain, conn);
		if(t && (NewPass.compareTo(NewPassAgain))==0) {
			System.out.println("Doi pass thanh cong");
			request.getRequestDispatcher("DoiPassThanhCong.jsp").forward(request, response);
		}
		else {
			System.out.println("Doi pass That bai");
			request.getRequestDispatcher("DoiPass").forward(request, response);
		}
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
