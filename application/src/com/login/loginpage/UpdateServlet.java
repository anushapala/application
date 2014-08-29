package com.login.loginpage;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;



public class UpdateServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		
		String newEmail=request.getParameter("emailid");
		Key userId= (Key) request.getSession().getAttribute("userId");
		
		PersistenceManager pm=PMF.get().getPersistenceManager();
		
		newEmail=newEmail.trim();
		
		try
		{
			User user=pm.getObjectById(User.class, userId);
			if(user!=null)
			{
				user.setEmail_id(newEmail);
				pm.makePersistent(user);
			
			response.setContentType("text/html");
			response.getWriter().println("<html><body><p> updated succesfully!!</p></body></html>");
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			pm.close();
		}
		
		
		
		
	}
	
	
}
