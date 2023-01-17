<%@ page language="java" session="true" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registo</title>
        <link rel="stylesheet" href="<c:url value="/static/css/roomRent.css"/>"/>
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>
    </head>
    <body>
        <div align="center">
            <h1>${title} at registration</h1>
            <h2>${user} ${message}, in registration</h2>                
            <p><a href="<c:url value='/login'/>">Login</a></p>
            <p><%=(new java.util.Date()).toString()%>  </p>
        </div>
    </body>
</html>
