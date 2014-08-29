package com.login.loginpage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet
{

	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		
		String username= request.getParameter("username");
		String password=request.getParameter("password");
		try
		{
			if(username.equals(username)&& password.equals(password))
			{
				response.setContentType("text/html");
				response.getWriter().println("<html><body><p> successfull!!</p></body></html>");
				response.getWriter().println("welcome  " +username);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
}
