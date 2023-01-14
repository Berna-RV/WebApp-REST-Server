<%@ page language="java" session="true"
         contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Registar Alojamento </title>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="/static/css/roomRent.css"/>"/>
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>
        <script src="<c:url value="/static/scripts/scriptsOferta.js"/>"></script>

    </head>

    <body>

        <div id="header">
            <div id="top">
                <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=180 height=100>
                <h1>Room Rent Évora</h1>
            </div>
            <div id="nav">
                <ul>
                    <li><a href="<c:url value='roomRentEvora'/>"> Room Rent �vora </a></li>
                    <li><a href="<c:url value='oferta'/>"> Registar Oferta </a></li>
                    <li><a href="<c:url value='procura'/>"> Registar Procura </a></li>
                    <li><a href="<c:url value='contactos'/>"> Contactos </a></li>
                    <li><a href="<c:url value='administracao'/>"> Administra��o </a></li>
                    <li><a href="<c:url value='mensagens'/>"> Mensagens </a></li>
                    <li><a href="<c:url value='login'/>"> Sign in </a></li>
                </ul>
            </div>
        </div>

        <h1>Registar Oferta</h1>

        <p>O preenchimento de todos os campos � obrigatorio. </p>

        <form>

            <p> Tipo de Alojamento:
                <select id="tipoAlojamento" name="tipo_alojamento" onchange="opcaoCasa()">
                    <option value="0" selected disabled hidden> </option>
                    <option value="1">Quarto</option>
                    <option value="2">Casa</option>
                </select>
            </p>

            <div id="opcaoDeCasa" class="tipo">
                <p>Tipo:
                    <select name="detalhes">
                        <option value="" selected hidden> </option>
                        <option>T0</option>
                        <option>T1</option>
                        <option>T2</option>
                        <option>T3</option>
                        <option>T4</option>
                        <option>T5</option>
                        <option>T6</option>
                    </select>
                </p>
            </div>

            <p> Tipo de Arrendat�rio:
                <select name="genero">
                    <option value="" selected disabled hidden> </option>
                    <option>Masculino</option>
                    <option>Feminino</option>
                    <option>Indiferenciado</option>
                </select>
            </p>
            <p>Pre�o por ocupa��o (Valor/m�s):
                <input type="number" name="preco">
            </p>

            <p>Nome do Alojamento:
                <input type="text" name="nomeAlojamento" maxlength="32">
            </p>

            <p>Morada do Alojamento:
                <input type="text" name="zona" maxlength="64">
            </p>

            <p>Codigo Postal:
                <input type="number" name="codigoPostal1" maxlength="4"> -
                <input type="number" name="codigoPostal2" maxlength="3">
            </p>

            <p>Contacto do Proprietario: +351
                <input type="number" name="contacto" maxlength="9">
            </p>

            <p> Nome do Propriet�rio
                <input type="text" name="anunciante">
            </p>

            <p> Mail do Propriet�rio:
                <input type="email" name="mail">
            </p>

            <input type="submit" value="Submeter">
            <input type="reset" value="Reset">
        </form>
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

                <h2>Cr�ditos</h2>
                <p>Daniel Barreiros l48452</p>
                <p>Bernardo Vitorino l48463</p>

            </div>

        </div>

        <br>
    </body>
</html>