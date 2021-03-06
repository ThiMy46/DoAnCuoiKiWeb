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
import DTO.result;

@WebServlet("/DisplayResult")
public class DisplayResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayResult() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
	
		int UserID= Integer.parseInt(request.getParameter("temp"));
		List<result> result = DAO.ResultDAO.DisplayResult(UserID,conn);
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		request.setAttribute("Users", user);
		request.setAttribute("result", result);
		request.getRequestDispatcher("listscore.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);
		// request.getRequestDispatcher("/WEB-INF/NewFile.jsp").forward(request,
		// response); máy ông k có thanh debug k bt sao tìm lỗi đây,
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
