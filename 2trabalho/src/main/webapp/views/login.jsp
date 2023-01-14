<%@ page language="java" session="true"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> Login </title>
	<link rel="stylesheet" href="/static/css/roomRent.css">
	<link rel="icon" type="image/x-icon" href="/static/images/logo.svg">

</head>

<body>
	<div id="login-box">

		<h2>Login</h2>
		
		<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>

			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='username' value=''></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				
				<tr>
					<td colspan='2'><input name="submit" type="submit" value="Submit" /></td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
</body>

</html>