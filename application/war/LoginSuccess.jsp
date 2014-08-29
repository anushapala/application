<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/CSS/LoginSuccess.css">
<title>Login Success </title>
</head>
<body>
	<h1> USER DETAILS ARE</h1>
	<img alt="avatar" src="/images/avatar.png">
	<table>
		<tbody>
			<tr>
			<td>First Name:</td>
			<td><%out.println((String)session.getAttribute("firstname")); %></td>
			</tr>
			
			<tr>
			<td>Last Name:</td>
			<td><%out.println((String)session.getAttribute("lastname")); %></td>
			</tr>
			
			<tr>
			<td>Username:</td>
			<td><%out.println((String)session.getAttribute("username")); %></td>
			</tr>
			
			<tr>
			<td>Email ID:</td>
			<td><%out.println((String)session.getAttribute("emailid")); %></td>
			</tr>
			
			<tr>
			<td> Gender: </td>
			<td><%out.println((String)session.getAttribute("gender")); %></td>
			</tr>
		
		</tbody>
	</table>
	<a href="/Update.jsp"> Update!</a>
	
</body>
</html>