package bloodBank.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bloodBank.dao.oracleImpl.UserDaoOracleImpl;
import bloodBank.dao.UserDao;
import bloodBank.pojo.User;

public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EditProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("editprofileservlet");
		
		String email_id=request.getParameter("email_id");
		System.out.println(email_id);
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		Integer age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String blood_group=request.getParameter("blood_group");
		Float weight=Float.parseFloat(request.getParameter("weight"));
		String mobile_number=request.getParameter("mobile_number");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		
		User user=new User(email_id,password,name,age,gender,blood_group,weight,mobile_number,city,address);
		
		UserDao dao = new UserDaoOracleImpl();
		
		if(dao.updateUserDetails(user)){
			User newUser=dao.getUser(user);
			HttpSession session = request.getSession();
			session.setAttribute("user", newUser);
			
			RequestDispatcher rd = request.getRequestDispatcher("redirect.jsp");
			request.setAttribute("details_updated_successfully", "yes");
			rd.forward(request,response);
		}else{
			
		}
	}

}
