<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="/CSS/Register.css"/>
<title> Registration page</title>
</head>
<body>
	<form name="registration" method="post" action="/Register">
	<h1> WELCOME TO REGISTRATION PAGE </h1>
	<fieldset> <legend><b>Sign-UP</b></legend>
	<table>
		<tbody>
			<tr>
				<td>First Name:</td>
				<td><input type="text" id="first_name" name="first_name" required></td>
			</tr>
  			<tr>
  				<td>Last Name:</td>
  				<td><input type="text" id="last_name" name="last_name"required></td>
  			</tr>
  			<tr>
  				<td>Username:</td>
  				<td><input type="text" id="username" name="username" required></td>
  			</tr>
        	<tr>
        		<td>Password:</td>
        		<td><input type="password" id="password" name="password" required></td>
        	</tr>
        	<tr>
        		<td>Email-id:</td>
        		<td><input type="text" id="email_id" name="email_id" required></td>
        	</tr>
        	<tr>
        		<td>Gender:</td>
        		<td> <input type="radio" name="gender" id="gender" value="Male" >Male<input type="radio" name="gender" id="gender" value="Female"> Female</td>
        	</tr>
        	<tr>
        		<td id="submit"><input type="submit" name="submit" id="submit" value="Register now"></td> 
        		<td id="reset"><input type="reset" name="reset" id="reset" value="Reset"></td>
        	</tr>
      
      	</tbody>
      </table>
	</fieldset>
	<p>Having Account?<a href="LoginPage.jsp">LogIn Here!</a></p>
	
	</form>
</body>
</html>