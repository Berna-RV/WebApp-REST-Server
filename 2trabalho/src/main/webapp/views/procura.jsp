<%@ page language="java" session="true"
         contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Procurar Alojamento</title>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"/>"></script>
        <script src="<c:url value="/static/scripts/scriptsProcura.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="/static/css/roomRent.css"/>"/>
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>

    </head>

    <body>

        <div id="header">
            <div id="top">
                <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=180 height=100>
                <h1>Room Rent ?vora</h1>
            </div>


            <div id="nav">
                <ul>
                    <li><a href="<c:url value='/roomRentEvora/home'/>"> Room Rent ?vora </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/registar0ferta'/>"> Registar Oferta </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/registarProcura'/>"> Registar Procura </a></li>
                    <li><a href="<c:url value='/roomRentEvora/contactos'/>"> Contactos </a></li>
                    <li><a href="<c:url value='/admin/roomRentEvora/administracao'/>"> Administra??o </a></li>
                    <li><a href="<c:url value='/user/roomRentEvora/mensagens'/>"> Mensagens </a></li>
                    <li><a href="<c:url value='/login'/>"> Sign in </a></li>
                    <li><a href="<c:url value='/logout'/>">Logout</a></li>
                </ul>
            </div>
        </div>

        <h1>Procurar Alojamento</h1>

        <p>O preenchimento de todos os campos ? obrigatorio</p>

        <form>

            <p> Tipo de Alojamento:
                <select id="tipoAlojamento" name="tipo_alojamento" onchange="opcaoCasa()">
                    <option value="0" selected disabled hidden> </option>
                    <option value="Quarto">Quarto</option>
                    <option value="Casa">Casa</option>
                </select>
            </p>


            <p>Detalhes:
                <input type="text" name="detalhes">
            </p>



            <p> Tipo de Arrendat?rio:
                <select name="genero">
                    <option value="" selected disabled hidden> </option>
                    <option>Masculino</option>
                    <option>Feminino</option>
                    <option>Indiferenciado</option>
                </select>
            </p>

            <p> Nome:
                <input type="text" name="anunciante" maxlength="64">
            </p>

            <p> Zona (Localiza??o Aproximada):
                <input type="text" name="zona" maxlength="64">
            </p>

            <p> Data de Registo: <input type="date" name="data"> </p>

            <p>Pre?o por ocupa??o (Valor/m?s):
                <input type="number" name="preco"> €
            </p>

            <p> Estado:
                <select name="tipoArrendatario">
                    <option value="" selected disabled hidden> </option>
                    <option>Ativo</option>
                    <option>Oculto</option>
                    <option>Terminado</option>
                </select>
            </p>

            <p>Contacto: +351
                <input type="number" name="contacto" maxlength="9">
            </p>

            <input type="submit" value="Submeter">
            <input type="reset" value="Reset">
        </form>

        <div id="confirmacao"></div>

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

                <h2>Cr?ditos</h2>
                <p>Daniel Barreiros l48452</p>
                <p>Bernardo Vitorino l48463</p>

            </div>

        </div>

        <br>

    </body>
</html>