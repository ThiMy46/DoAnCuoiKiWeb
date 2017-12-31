package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ExamDAO;
import DAO.ResultDAO;
import DB.DBConnection;
import DTO.User;
import DTO.question;
import DTO.test;

@WebServlet("/DoTest")
public class DoTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int diem=0;
		Connection conn = (Connection) DBConnection.CreateConnection();
		System.out.println("Da vao dotest"+conn);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int UserID= Integer.parseInt(request.getParameter("userID"));
		
		System.out.println("UserID la:"+UserID);
		
		//User user=DAO.UsersDAO.Display_1User(UserID, conn);
		
		int MaBaiThi=Integer.parseInt(request.getParameter("tenbaithi"));
		
		 List<question> questions = DAO.QuestionDAO.DisplayQuestionThongQoaWxam(MaBaiThi, conn);
		 
		 int soluongcauhoi=questions.size();
		 int[] DapAn= new int[soluongcauhoi];
		
		 String[] MaCauHoi=new String[soluongcauhoi];
		 
		 for(int i=0;i<soluongcauhoi;i++)
		 {
			 MaCauHoi[i]=String.valueOf(questions.get(i).getQuestionID());
			 System.out.println("Ma Cau Hoi "+i+" la: "+MaCauHoi[i]);
			 
		 }
		 
		 for(int i=0;i<soluongcauhoi;i++)
		 {
			 DapAn[i]=questions.get(i).getAnswer();
			 System.out.println("Dap An Cau Hoi "+i+" la: "+ DapAn[i]);
		 }
		 
		 String tam=request.getParameter("1");
		 System.out.println("Dap An dc chon la  "+ tam);
		 
		 Integer MaLuaChon[]=new Integer[soluongcauhoi];
			
			
			
			//int macauhoi1= Integer.parseInt(request.getParameter("CauHoi1"));
			//System.out.println("ma cau hoi la"+ macauhoi1);
			for(int i=0;i<soluongcauhoi;i++)
			{
			
				String test=request.getParameter(MaCauHoi[i]);
				
				if(test==null) { test="0";}
				
				MaLuaChon[i]=(Integer.parseInt(test));
				
				System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb la: " +MaLuaChon[i]);
				if(MaLuaChon[i]==DapAn[i]) diem++;
				
			}
		System.out.println("diem la:"+diem);
		float tam2=(diem*10)%soluongcauhoi;
		diem=(int)((diem*10)/soluongcauhoi);
		if(tam2>=0.5) diem++;
		System.out.println("diem la:"+diem);
		try {
			System.out.println("UserID la lan 2:"+UserID);
			Connection conn2 = (Connection) DBConnection.CreateConnection();
			boolean kt = ResultDAO.InsertResult(UserID, MaBaiThi, diem, conn2);
			if(kt==true) {
				System.out.println("insert ket qoa thành công");
			}
			
			
			request.setAttribute("diem", diem);
			
			User user=DAO.UsersDAO.Display_1User(UserID, conn);
			request.setAttribute("Users", user);
			RequestDispatcher rd= request.getRequestDispatcher("KetQoa.jsp");
			rd.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
