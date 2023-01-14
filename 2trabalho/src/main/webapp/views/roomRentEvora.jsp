<%@ page language="java" session="true"
         contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Registar Alojamento </title>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"/>"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/roomRent.css"/>" />
        <link rel="icon" type="image/x-icon" href="<c:url value="/static/images/logo.svg"/>"/>
        <script src="<c:url value="/static/scripts/scriptsRoomRentEvora.js"/>"></script>

    </head>
    <body>
        <div id="header">
            <div id="top">
                <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=180 height=100>
                <h1 id="nomePagina" >Room Rent Évora</h1>
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

                <form id="search" method="POST">
                    <input id="search_bar" name="tipo" type="text" placeholder="O que procura?">
                    <input id="search_button" type="submit" value="Procurar">
                </form>
            </div>
        </div>

        <div id="principal">

            <div id="ParteOfertas">
                <h2 id="tituloOfertas"> Ofertas </h2>

                <div id="ofertas">

                    <div id="primeira_oferta" onclick="mostrarInfo('oferta1')">
                        <br>
                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="oferta1" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>

                    <div id="segunda_oferta" onclick="mostrarInfo('oferta2')">
                        <br>
                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="oferta2" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>

                    <div id="terceira_oferta" onclick="mostrarInfo('oferta3')">
                        <br>
                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="oferta3" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>

                </div>

                <div>
                    <form action="ofertasList.jsp">
                        <p>
                            <button id="verTudoOfertas">Ver Tudo</button>
                        </p>
                    </form>
                </div>


            </div>

            <div id="ParteProcuras">

                <h2 id="tituloProcuras">Procuras</h2>
                <div id="procuras">
                    <div id="primeira_procura" onclick="mostrarInfo('procura1')">
                        <br>
                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="procura1" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>
                    <div id="segunda_procura" onclick="mostrarInfo('procura2')">
                        <br>
                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="procura2" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>
                    <div id="terceira_procura" onclick="mostrarInfo('procura3')">
                        <br>

                        <img src="<c:url value="/static/images/logo.svg"/>" alt="some text" width=220 height=120>
                        <p class="tipo_alojamento">Tipo de Alojamento: </p>
                        <p class="detalhes">Detalhes: </p>
                        <p class="zona">Zona: </p>

                        <div id="procura3" class="hidden">
                            <p class="genero">Genero: </p>
                            <p class="preco">Preço: </p>
                            <p class="anunciante">Anunciante: </p>
                            <p class="contacto">Contacto: </p>
                            <p class="data">Data: </p>
                            <p class="estado">Estado: </p>
                            <p class="aid">Aid: </p>
                        </div>
                    </div>
                </div>

                <div>
                    <form action="procurasList.jsp">
                        <p>
                            <button id="verTudoProcuras">Ver Tudo</button>
                        </p>
                    </form>
                </div>
            </div>
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

                <h2>Créditos</h2>
                <p>Daniel Barreiros l48452</p>
                <p>Bernardo Vitorino l48463</p>

            </div>

        </div>

    </body>
</html>