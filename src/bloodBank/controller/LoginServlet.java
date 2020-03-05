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

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
      
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("loginservlet");
		String email_id=request.getParameter("email_id");
		String password=request.getParameter("password");
		
		User user=new User();
		user.setEmail_id(email_id);
		user.setPassword(password);
		
		UserDao dao=new UserDaoOracleImpl();
		
		if(dao.loginValidation(user)){
			User newUser=dao.getUser(user);
			
			HttpSession session = request.getSession();
			session.setAttribute("user", newUser);
			response.sendRedirect("userHome.jsp");
		}else{
			System.out.println("login not successful");
			RequestDispatcher rd=request.getRequestDispatcher("redirect.jsp");
			request.setAttribute("login_successful", "no");
			rd.forward(request, response);
		}
	}

}
