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

import org.apache.catalina.User;

import DB.DBConnection;
import DTO.BaiThi;
import DTO.exam;
import DTO.question;
import DTO.test;

@WebServlet("/BatDauThi")
public class BatDauThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BatDauThi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		//
		System.out.println("Da Vao Sua Exam");
		 int ExamID=Integer.parseInt(request.getParameter("temp"));
		 int UserID=Integer.parseInt(request.getParameter("userID"));
		 
		  System.out.println("Exam ID nhan duoc la"+ExamID);
		  System.out.println("user ID nhan duoc la"+UserID);
		  
		  DTO.User user=DAO.UsersDAO.Display_1User(UserID, conn);
		 List<BaiThi> BaiThis = DAO.BaiThiDAO.DisplayBaiThiTheoExamID(ExamID, conn);
		 
		 System.out.println("dap an A nhan duoc la"+BaiThis.get(0).getOptionA());
		
			request.setAttribute("BaiThis", BaiThis);
			request.setAttribute("Users", user);
			request.getRequestDispatcher("HienThiCauHoi.jsp").forward(request, response);
			
			System.out.println("chuoi la" + conn);
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
