<%@ page language="java" session="true"
	contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Spring Security Basic - Form Based JDBC Authentication</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/roomRent.css"/>" />
</head>
<body>
	<div id="login-box">
		<h2>Login Here</h2>
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<form name='loginForm'
			action="<c:url value='j_spring_security_check' />" method='POST'>
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
					<td colspan='2'><input name="submit" type="submit"
						value="Submit" /></td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
                                <div><a href="<c:url value='/roomRentEvora/newuser'/>">Register</a></div>
</body>
</html>