<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<form name="update" method="post" action="/update">
	<h1>please update your details</h1>
	<fieldset> <legend> Update</legend>
	<table>
		<tbody>
			<tr>
			<td>Email ID:<input type="text"  id="emailid" name="emailid"></td>
			</tr>
			<tr>
			<td> <input type="submit" id="submit" name="submit" value="update"></td>
			</tr>
			
		</tbody>
	</table>
	
	</fieldset>
	</form>
	
</body>
</html>