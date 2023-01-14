<%@ page language="java" session="true"
         contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Contactos </title>
        <link rel="stylesheet" href="<c:url value="/static/css/roomRent.css"/>"/>
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>
    </head>

    <body>
        <div id="header">
            <div id="top">
                <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=180 height=100>
                <h1>Room Rent Évora</h1>
            </div>


            <div id="nav">
                <ul>
                    <li><a href="<c:url value='roomRentEvora'/>"> Room Rent Évora </a></li>
                    <li><a href="<c:url value='oferta'/>"> Registar Oferta </a></li>
                    <li><a href="<c:url value='procura'/>"> Registar Procura </a></li>
                    <li><a href="<c:url value='contactos'/>"> Contactos </a></li>
                    <li><a href="<c:url value='administracao'/>"> Administração </a></li>
                    <li><a href="<c:url value='mensagens'/>"> Mensagens </a></li>
                    <li><a href="<c:url value='login'/>"> Sign in </a></li>
                </ul>
            </div>
        </div>

        <br><br>

        <div id="bottom">

            <div id="contactos">

                <h2>Contactos</h2>
                <p>geral@roomRentEvora.pt </p>
                <p>roomRentEvora@gmail.com</p>

            </div>

            <div id="patrocinadores">

                <h2>Patrocinadores</h2>
                <img src="<c:url value="/static/images/UniversidadedeEvora.png"/>" alt="some text" width=220 height=80>
                <img src="<c:url value="/static/images/CamaraMunicipal.jpeg"/>" alt="some text" width=140 height=80>
                <img src="<c:url value="/static/images/EvoraPlaza.png"/>" alt="some text" width=90 height=80>

            </div>

            <div id="creditos">

                <h2>Créditos</h2>
                <p>Daniel Barreiros l48452</p>
                <p>Bernardo Vitorino l48463</p>

            </div>
    </body>
</html>