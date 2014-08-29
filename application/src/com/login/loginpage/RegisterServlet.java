package com.login.loginpage;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet
{

		public void doPost(HttpServletRequest request,HttpServletResponse response)
		{
			String firstname=request.getParameter("first_name");
			String lastname=request.getParameter("last_name");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String emailid=request.getParameter("email_id");
			String gender=request.getParameter("gender");
			
			PersistenceManager pm= PMF.get().getPersistenceManager();
			
			try
			{
				User user=new User();
				
				user.setFirst_name(firstname);
				user.setLast_name(lastname);
				user.setUsername(username);
				user.setPassword(password);
				user.setEmail_id(emailid);
				user.setGender(gender);
				
				pm.makePersistent(user);
			
				/*response.setContentType("text/html");
				String loginpage ="/LoginPage.jsp";
				response.getWriter().println("<html><head><body><p>registration successfully done!</p><a href='"+loginpage+"'> LogIn </a></body></head></html>");
				*/
				
				response.sendRedirect("/LoginPage.jsp");
				
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			finally{
				pm.close();
			}
			
		}
}
