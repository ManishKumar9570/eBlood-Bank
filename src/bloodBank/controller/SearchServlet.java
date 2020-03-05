package bloodBank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bloodBank.dao.UserDao;
import bloodBank.dao.oracleImpl.UserDaoOracleImpl;
import bloodBank.pojo.User;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SearchServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String blood_group=request.getParameter("blood_group");
		String city=request.getParameter("city");
		
		UserDao dao = new UserDaoOracleImpl();
		
		List<User> list =null;
		
		if( (list=dao.getAllUsers(blood_group, city))!=null ){
			RequestDispatcher rd = request.getRequestDispatcher("searchResult.jsp");
			request.setAttribute("userList", list);
			rd.forward(request, response);
		}
	}

}
