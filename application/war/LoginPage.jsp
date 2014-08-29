<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="/CSS/LoginPage.css"/>
<title>Login page</title>
</head>
<body>
	<form name="login" method="post" action="/LoginPage">
	<h1> WELCOME TO LOGIN PAGE </h1>
	<fieldset><legend><b>LogIn</b></legend>
	<table>
		<tbody>
			<tr>
				<td> username: <input type="text" id="username" name="username"/></td>
			</tr>
			<tr>
				<td> password: <input type="password" id="passowrd" name="password"/></td>
			</tr>
			<tr>
				<td id="login"> <input type="submit" name="submit" id="submit" value="Log In"></td>
			</tr>
			
		</tbody>
	</table>
	</fieldset>
	<p>Have'nt registered yet?<a href="Register.jsp">Register Now!</a></p>
	</form>

</body>
</html>