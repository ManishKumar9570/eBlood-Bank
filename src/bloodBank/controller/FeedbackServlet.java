package bloodBank.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bloodBank.util.DbUtil;


public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String feedSugg=request.getParameter("feedSugg");
	boolean isAdd =false;
	
	 Connection con  = null;
	 PreparedStatement pstmt  = null;
	 ResultSet rs  = null;
	 
	 try{
	     con =DbUtil.getConnection();
		 String sql="insert into Blood_Donation_Feedback_table(name,email,feedSugg)"
		 		+ " values(?,?,?)";
		 pstmt  = con.prepareStatement(sql);
		 pstmt.setString(1, name);
		 pstmt.setString(2, email);
		 pstmt.setString(3, feedSugg);
		 if(pstmt.executeUpdate()==1) {
			 isAdd=true;	
		 }
	 }catch(Exception e){
		 e.printStackTrace();
	 }finally{
			try{
				DbUtil.closeConnection(con);
			}catch(Exception e){
				e.printStackTrace();
			}	
	 }
	 
	 //show view 
//	 response.sendRedirect("showallproduct?add_msg="+isAdd);
	// response.sendRedirect("home.jsp?");
	 if(isAdd){
		RequestDispatcher rd=request.getRequestDispatcher("redirect.jsp");
		request.setAttribute("submitted", "yes");
		rd.forward(request, response);
	 	}else{
	 		
	 		RequestDispatcher rd=request.getRequestDispatcher("redirect.jsp");
			request.setAttribute("submitted", "no");
			rd.forward(request, response);
	 	}
	}

}
