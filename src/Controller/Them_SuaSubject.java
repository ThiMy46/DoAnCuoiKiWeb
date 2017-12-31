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
import DTO.User;
import DTO.subjects;

@WebServlet("/Them_SuaSubject")
public class Them_SuaSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Them_SuaSubject() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

Connection conn =  (Connection) DB.DBConnection.CreateConnection();
    	
    	if(request.getParameter("temp")==null)
    	{
    		RequestDispatcher rd = request.getRequestDispatcher("ThemSubject.jsp");
    		rd.forward(request, response);
    	}
    	else {
        	int id = Integer.parseInt(request.getParameter("temp"));
        	System.out.println("Temp nhan duoc la"+id);

    		subjects subjectsss = SubjectsDAO.Display_1Subject(id, conn);
    		request.setAttribute("subjectsss", subjectsss);

    		RequestDispatcher rd = request.getRequestDispatcher("SuaSubject.jsp");
    		rd.forward(request, response);
    	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
