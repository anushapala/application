package com.login.loginpage;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginPageServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{

		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		PersistenceManager pm= PMF.get().getPersistenceManager();
		
		username=username.trim();
		Query query=pm.newQuery(User.class);
		query.declareParameters("String loginUser,String loginPass");
		query.setFilter("username==loginUser && password==loginPass");
		try {
			response.setContentType("text/html");
			  List<User> results = (List<User>)query.execute(username,password);
			  if (!results.isEmpty()) 
			  {
				  	for(User user:results)
				  	{
				  		HttpSession session   = request.getSession();
				  		session.setAttribute("firstname", user.getFirst_name());
				  		session.setAttribute("lastname", user.getLast_name());
				  		session.setAttribute("username", user.getUsername());
				  		session.setAttribute("emailid", user.getEmail_id());
				  		session.setAttribute("gender", user.getGender());
				  		session.setAttribute("userId", user.getKey());
				  	}
				  
				  	response.sendRedirect("/LoginSuccess.jsp");
			  } else
			  {
				  
				String loginpage ="/LoginPage.jsp";
			    response.getWriter().println("<html><head><body><p>login failed! </p><a href='"+loginpage+"'> LogIn </a></body></head></html>");
			  }
			  
			} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally {
			  query.closeAll();
			}
		
		
		
	}
			
}
