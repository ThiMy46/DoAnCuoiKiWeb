package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.io.*;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TestDAO;
import DAO.UsersDAO;
import DB.DBConnection;
import DTO.User;
import DTO.question;

@WebServlet("/XuLyCauHoi")
public class XuLyCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyCauHoi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		List<question> Questions=DAO.QuestionDAO.DisplayQuestion(conn);
		
		int soluongcauhoi=Questions.size();
		
		String userIDa="userID";
		
		int UserID= Integer.parseInt(request.getParameter(userIDa));
		int ExamID= Integer.parseInt(request.getParameter("examid"));
		
		System.out.println("cai nay la nhan dc tai xuly cau hoi:"+UserID);
		System.out.println("Exam ID:"+ExamID);
		
		String[] MaCauHoi=new String[soluongcauhoi];
		 // ma cau hoi chua list ma question, tranh loi idquestion ko theo thu tu lien tuc
		 for(int i=0;i<soluongcauhoi;i++)
		 {
			 MaCauHoi[i]=String.valueOf(Questions.get(i).getQuestionID());
			 System.out.println("Ma Cau Hoi "+i+" la: "+MaCauHoi[i]);
			 
		 }
		 Integer MaLuaChon[]=new Integer[soluongcauhoi];
			for(int i=0;i<soluongcauhoi;i++)
			{
			
				String test=request.getParameter(MaCauHoi[i]);
				
				if(test==null) { test="0";}
				
				MaLuaChon[i]=(Integer.parseInt(test));
				
				System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb la: " +MaLuaChon[i]);
				
				
			}
		/*Integer MaCauHoi[]=new Integer[soluongcauhoi];
		String cau="CauHoi";
		
		
		//int macauhoi1= Integer.parseInt(request.getParameter("CauHoi1"));
		//System.out.println("ma cau hoi la"+ macauhoi1);
		for(int i=0;i<soluongcauhoi;i++)
		{
			int j=i+1;
			String s=String.valueOf(j);
			String CauHoi=cau+s;
			System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:" +s);
			String test=request.getParameter(s);
			
			if(test==null) { test="0";}
			
			MaCauHoi[i]=(Integer.parseInt(test));
			
			System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:"+s+" la: " +MaCauHoi[i]);
			
		}
		
		//boolean kt = TestDAO.InsertTest(2,2,  conn);*/
		for(int i=0;i<soluongcauhoi;i++)
		{
			if(MaLuaChon[i]!=0)
			{
				
				
					boolean kt = TestDAO.InsertTest(MaLuaChon[i],ExamID,  conn);
					if(kt==true) {
						System.out.println("insert test thành công");
					
					
					
					}
			}
		}
		
		
		System.out.println("Ma Cau Hoi 1:"+MaCauHoi[0]);
		System.out.println("Ma Cau Hoi 2:"+MaCauHoi[1]);
		System.out.println("Ma Cau Hoi 3:"+MaCauHoi[2]);
		
		System.out.println("Da Vao Duoc xu ly cau hoi:");
		//System.out.println("cau hoi la:"+cauhoi);
		
		
		User user=DAO.UsersDAO.Display_1User(UserID, conn);
		request.setAttribute("user", user);
		RequestDispatcher rd= request.getRequestDispatcher("DisplayExam");
		rd.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
