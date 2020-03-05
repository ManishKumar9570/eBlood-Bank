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

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegistrationServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("aaaaa");
		
		String email_id=request.getParameter("email_id");
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
		
		if(dao.isUserExists(user)){
			System.out.println("user already exists");
			request.setAttribute("user_already_exists", "yes");
			RequestDispatcher rd = request.getRequestDispatcher("redirect.jsp");
			rd.forward(request, response);
		}else{
			if(dao.addUser(user)){
				request.setAttribute("registered_successfully", "yes");
				RequestDispatcher rd = request.getRequestDispatcher("redirect.jsp");
				rd.forward(request, response);
			}else{
				System.out.println("error in adding to table");
			}
		}
	}

}
