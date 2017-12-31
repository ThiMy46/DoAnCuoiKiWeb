package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UsersDAO;
import DB.DBConnection;
import DTO.User;

@WebServlet("/ThemUser")
public class ThemUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //để cho code gọn hơn
		//
		 int UserID=Integer.parseInt( request.getParameter("UserID"));
		 String UserPass= request.getParameter("UserPass");
		 String UserName= request.getParameter("UserName");
		 
		 int Gender=Integer.parseInt(request.getParameter("Gender"));
		 String PhoneNumber= request.getParameter("PhoneNumber");
		 int StateUser = Integer.parseInt(request.getParameter("StateUser"));
		//
		 String ngaySinh = (String)request.getParameter("DateOfBirth");
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngaySinh);
			java.sql.Date DateOfBirth = new java.sql.Date(startDate.getTime());		
			System.out.println(DateOfBirth);
		
			
			boolean kt = UsersDAO.InsertUsers(UserID, UserPass, UserName, DateOfBirth, Gender, PhoneNumber, StateUser, conn);
			if(kt==true) {
				System.out.println("insert User thành công");
			}
			int UserID2= Integer.parseInt(request.getParameter("temp"));
			User user=DAO.UsersDAO.Display_1User(UserID2, conn);
			request.setAttribute("Users", user);
			RequestDispatcher rd= request.getRequestDispatcher("DisplayUser");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
