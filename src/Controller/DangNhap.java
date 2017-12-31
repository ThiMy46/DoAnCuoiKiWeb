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

@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DangNhap() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		
		String UserName= request.getParameter("TaiKhoan");
		 String UserPass= request.getParameter("MatKhau");
		 
		 System.out.println("Tai Khoan  la"+UserName);
		 System.out.println("mat khau   la"+UserPass);
		System.out.println("conn la: "+conn);
		User Users = DAO.UsersDAO.Display_1UserTheoTK(UserName, UserPass, conn);
		
		
		System.out.println(Users.getUserName());
		
		if(Users.getUserName()==null)
		{
			System.out.println("Tai Khoan Va Mat Khau Khong Dung");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		else {
			
		if(Users.getMaQuyen()==4) 
		{
			request.setAttribute("Users", Users);
			request.getRequestDispatcher("HomeNguoiRaDe.jsp").forward(request, response);
		}
		if(Users.getMaQuyen()==1) 
		{
			request.setAttribute("Users", Users);
			request.getRequestDispatcher("HomeAdmin.jsp").forward(request, response);
		}
		if(Users.getMaQuyen()==3) 
		{
			request.setAttribute("Users", Users);
			request.getRequestDispatcher("HomeCuaUser.jsp").forward(request, response);
		}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
