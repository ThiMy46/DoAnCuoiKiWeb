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
import DTO.test;
import DTO.typeuser;

@WebServlet("/DisplayTest")
public class DisplayTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		List<test> tests = DAO.TestDAO.DisplayTest(conn);
		System.out.println(tests.get(0).getExamID());
		// list.get(0).getUserID();

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		request.setAttribute("tests", tests);
		request.getRequestDispatcher("NewFile2.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
