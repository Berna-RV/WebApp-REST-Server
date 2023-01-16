var procuras = null;
var procuras_size = null;

$(document).ready(
    function () {
        $.ajax({
            url:"http://localhost:8080/roomRentEvora/lista", method: "POST", data: { tipo: 'procura' }, success: function (data) {
                procuras = Object.keys(data.resultados).map(v => ({ [v]: { ...data.resultados[v] } }));
                procuras_size = procuras.length;

                var page_number = Math.ceil(procuras_size / 4);

                for (let i = 1; i <= page_number; i++) {
                    $(".pagination").append("<a id=\" " + i + " \"  onclick=\"showPage(" + i + ")\">" + i + "</a>");
                }

                showPage(1);
            }
        });
    }
);


function showPage(page_number) {


    $(".principal").html("");
    $(".principal").append("<br>");


    for (let i = 0, j = procuras_size - (page_number - 1) * 4 - 1; j >= 0 && i < 4; j--, i++) {
        $(".principal #" + i + "").text("");

        let index = j;
        index = index.toString();
        var myJSON = procuras[j][index];

        $(".principal").append("<a onclick=\"showDetails(" + myJSON.aid + ")\"><div id=\"" + i + "\" ></div></a>");


        $(".principal #" + i + "").append("<img src=\"/static/images/logo.svg\" alt=\"some text\" width=220 height=120> <br>");
        $(".principal #" + i + "").append("Tipo de alojamento: " + myJSON.tipo_alojamento + "<br>");
        $(".principal #" + i + "").append("Detalhes: " + myJSON.detalhes + "<br>");
        $(".principal #" + i + "").append("Zona: " + myJSON.zona + "<br>");
        $(".principal #" + i + "").append("Genero: " + myJSON.genero + "<br>");
        $(".principal #" + i + "").append("Preço: " + myJSON.preco + "€" + "<br>");
        $(".principal #" + i + "").append("Anunciante: " + myJSON.anunciante + "<br>");
        $(".principal #" + i + "").append("Contacto: " + myJSON.contacto + "<br>");
        $(".principal #" + i + "").append("Data: " + myJSON.data + "<br>");
        $(".principal #" + i + "").append("Estado: " + myJSON.estado + "<br>");
        $(".principal #" + i + "").append("Aid: " + myJSON.aid + "<br><br>");

        $(".principal #" + i + "").css({
            "color": "white",
            "font-size": "17px",
            "background-color": "rgba(56, 138, 170, 0.904)",
            "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)", 
            "margin": "2% 1% 2% 3%",
            "display":"inline-block",
            "border-radius":"15px",
            "width": "45%",
            "text-align": "center"
        });
    }
}

function showDetails(adNumber) {
    $(".detalhes").text("");
    $(".detalhes").append("<h1 id=\"tituloDetalhes\">Detalhes</h1>");
    $("#tituloDetalhes").css({"margin-left":"3%"});
    $(".detalhes").append("<div id=\"atributos\"></div>");

    $.ajax({
        url: "http://alunos.di.uevora.pt/tweb/t1/anuncio", method: "POST", data: { aid: adNumber }, success: function (data) {

            $(".detalhes #atributos").append("<img src=\"/static/images/logo.svg\" alt=\"some text\" width=220 height=120> <br>");
            $(".detalhes #atributos").append("Tipo de alojamento: " + data.anuncio.tipo_alojamento + "<br>");
            $(".detalhes #atributos").append("Detalhes: " + data.anuncio.detalhes + "<br>");
            $(".detalhes #atributos").append("Zona: " + data.anuncio.zona + "<br>");
            $(".detalhes #atributos").append("Genero: " + data.anuncio.genero + "<br>");
            $(".detalhes #atributos").append("Preço: " + data.anuncio.preco + "€" + "<br>");
            $(".detalhes #atributos").append("Anunciante: " + data.anuncio.anunciante + "<br>");
            $(".detalhes #atributos").append("Contacto: " + data.contacto + "<br>");
            $(".detalhes #atributos").append("Data: " + data.anuncio.data + "<br>");
            $(".detalhes #atributos").append("Estado: " + data.anuncio.estado + "<br><br>");

            $(".detalhes #atributos").css({
                "color": "white",
                "font-size": "17px",
                "background-color": "rgba(56, 138, 170, 0.904)",
                "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)", 
                "margin": "0% 3% 1% 3%",
                "border-radius":"15px",
                "width": "45%",
                "float": "left",
                "text-align": "center"
            });

            $(".detalhes").append("<h1>Contactar</h1>");
            $(".detalhes").append("<form> <p>Aid:"+adNumber+"<input type=\"hidden\" name=\"aid\" value=\""+adNumber+"\"></p> <p>Remetente:  <input type=\"text\" name=\"remetente\"></p> <p>Mensagem:  <input type=\"text\" name=\"msg\"></p> <input type=\"submit\" value=\"Submeter\"></form>");

            submit();
        }
    });
}

function submit() {


    $("form").on("submit", function (event) {
        event.preventDefault();

        var formValues = $(this).serialize();

        $.post("http://alunos.di.uevora.pt/tweb/t1/contactar", formValues, function (data) {
            if (data.resultado == "ok") {
                alert("A mensagem foi enviada");
            } else {
                alert("A mensagem não foi enviada");
            }
        });
    });

}

