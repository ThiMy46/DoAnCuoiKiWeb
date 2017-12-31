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
import DTO.typeuser;

@WebServlet("/Displaytypeuser")
public class Displaytypeuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Displaytypeuser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("chuoi la" + conn);
		List<typeuser> typeusers = DAO.typeuserDAO.Displaytypeusers(conn);
		System.out.println(typeusers.get(0).getTypeUserID());
		// list.get(0).getUserID();

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		request.setAttribute("typeusers", typeusers);
		request.getRequestDispatcher("NewFile1.jsp").forward(request, response);
		System.out.println("chuoi la" + conn);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
