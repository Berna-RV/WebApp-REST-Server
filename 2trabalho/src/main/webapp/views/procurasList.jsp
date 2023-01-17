<%@ page language="java" session="true"
         contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de Procuras</title>
        <link rel="stylesheet" href="<c:url value="/static/css/roomRent.css"/>"/>
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"/>"></script>
        <script src="<c:url value="/static/scripts/scriptsProcurasList.js"/>"></script>
    </head>

    <body>
        <div id="header">
            <div id="top">
                <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=180 height=100>
                <h1>Room Rent �vora</h1>
            </div>


            <div id="nav">
                <ul>
                    <li><a href="<c:url value='/roomRentEvora/home'/>"> Room Rent �vora </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/registar0ferta'/>"> Registar Oferta </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/registarProcura'/>"> Registar Procura </a></li>
                    <li><a href="<c:url value='/roomRentEvora/contactos'/>"> Contactos </a></li>
                    <li><a href="<c:url value='/admin/roomRentEvora/administracao'/>"> Administra��o </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/mensagens'/>"> Mensagens </a></li>
                    <li><a href="<c:url value='/login'/>"> Sign in </a></li>
                    <li><a href="<c:url value='/logout'/>">Logout</a></li>
                </ul>
            </div>

            <div id="confirmacao"></div>
        </div>

        <h1 id="titleProcurasList">Procuras</h1>

        <div id="paginacao">
            <div class="pagination">
            </div>
        </div>

        <div class="principal">

        </div>

        <div class="detalhes">
        </div>

        <div id="espacamentoDetalhes"> 

            <p> </p>
        </div>
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

                <h2>Cr�ditos</h2>
                <p>Daniel Barreiros l48452</p>
                <p>Bernardo Vitorino l48463</p>

            </div>

        </div>

        <br>

    </body>
</html>