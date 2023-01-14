var ativos = null;
var inativos = null;

$(document).ready(function () {
    $.post("http://alunos.di.uevora.pt/tweb/t1/gereanuncios", function (data) {
        ativos = data["ativo"];
        inativos = data["inativo"];

        $(".pagination").append(
            '<a onclick="showAtivos()">Ativos</a><a onclick="showInativos()">Inativos</a>'
        );
        $("#tituloAdministracao").css({ "margin-left": "2%" });
        $("#botoesPaginacao").css({ "margin-left": "2%" });

    });
});

function showPageAtivos(page_number) {
    $(".ads").html("");
    $(".ads").append("<br>");

    for (
        let i = 0, j = ativos.length - (page_number - 1) * 6 - 1;
        j >= 0 && i < 6;
        j--, i++
    ) {
        $(".ads").append('<div id="' + i + '"></div>');

        let aid = ativos[j];

        $(".ads #" + i + "").append("<br>" + "Aid: " + aid);
        $(".ads #" + i + "").append(
            '<p> <\p> <a onclick="modifyAdStateFromAtivo(' + aid + ')">- Alterar -</a>'
        );
        $(".ads #" + i + "").append("<br><br>");

        if (window.matchMedia("(max-width: 980px").matches) {

            $(".ads #" + i + "").css({
                color: "white",
                "font-size": "18px",
                "background-color": "rgba(56, 138, 170, 0.904)",
                "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)",
                margin: "2% 1% 1% 5%",
                display: "inline-block",
                width: "90%",
                "text-align": "center",
                "border-radius": "15px",
            });

            $(".ads a").css({
                color: "black",
                "font-size": "17px",
                "background-color": "white",
                border: "1px solid #000000",
                width: "50%",
                margin: "0% 0% 0% 0%",
                display: "inline-block",
                "text-align": "center",
                "border-radius": "5px",
            });

        }

        else {
            $(".ads #" + i + "").css({
                color: "white",
                "font-size": "18px",
                "background-color": "rgba(56, 138, 170, 0.904)",
                "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)",
                margin: "2% 1% 1% 2%",
                display: "inline-block",
                width: "13%",
                "text-align": "center",
                "border-radius": "15px",
            });

            $(".ads a").css({
                color: "black",
                "font-size": "17px",
                "background-color": "white",
                border: "1px solid #000000",
                width: "75%",
                margin: "0% 0% 0% 0%",
                display: "inline-block",
                "text-align": "center",
                "border-radius": "5px",
            });
        }
    }
}

function showAtivos() {
    $(".paginationNumbers").html("");

    var page_number = Math.ceil(ativos.length / 6);

    for (let i = 1; i <= page_number; i++) {
        $(".paginationNumbers").append("<a id=\" " + i + " \"  onclick=\"showPageAtivos(" + i + ")\">" + i + "</a>");
    }

    $(".paginationNumbers").css({ "margin-left": "2%" });

    showPageAtivos(1);
}



function showPageInativos(page_number) {
    $(".ads").html("");
    $(".ads").append("<br>");

    for (
        let i = 0, j = inativos.length - (page_number - 1) * 6 - 1;
        j >= 0 && i < 6;
        j--, i++
    ) {
        $(".ads").append('<div id="' + i + '"></div>');

        let aid = inativos[j];

        $(".ads #" + i + "").append("<br>" + "Aid: " + aid);
        $(".ads #" + i + "").append(
            '<p> <\p> <a onclick="modifyAdStateFromInativo(' + aid + ')">- Alterar -</a>'
        );
        $(".ads #" + i + "").append("<br><br>");

        if (window.matchMedia("(max-width: 980px").matches) {

            $(".ads #" + i + "").css({
                color: "white",
                "font-size": "18px",
                "background-color": "rgba(56, 138, 170, 0.904)",
                "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)",
                margin: "2% 1% 1% 5%",
                display: "inline-block",
                width: "90%",
                "text-align": "center",
                "border-radius": "15px",
            });

            $(".ads a").css({
                color: "black",
                "font-size": "17px",
                "background-color": "white",
                border: "1px solid #000000",
                width: "50%",
                margin: "0% 0% 0% 0%",
                display: "inline-block",
                "text-align": "center",
                "border-radius": "5px",
            });

        }

        else {
            $(".ads #" + i + "").css({
                color: "white",
                "font-size": "18px",
                "background-color": "rgba(56, 138, 170, 0.904)",
                "box-shadow": "0 4px 8px 0 black, 0 6px 20px 0 rgba(0, 0, 0, 0.19)",
                margin: "2% 1% 1% 2%",
                display: "inline-block",
                width: "13%",
                "text-align": "center",
                "border-radius": "15px",
            });

            $(".ads a").css({
                color: "black",
                "font-size": "17px",
                "background-color": "white",
                border: "1px solid #000000",
                width: "75%",
                margin: "0% 0% 0% 0%",
                display: "inline-block",
                "text-align": "center",
                "border-radius": "5px",
            });
        }

    }

}

function showInativos() {

    $(".paginationNumbers").html("");

    var page_number = Math.ceil(inativos.length / 6);

    for (let i = 1; i <= page_number; i++) {
        $(".paginationNumbers").append("<a id=\" " + i + " \"  onclick=\"showPageInativos(" + i + ")\">" + i + "</a>");
    }

    $(".paginationNumbers").css({ "margin-left": "2%" });

    showPageInativos(1);
}

function modifyAdStateFromAtivo(aid) {
    var descricao = prompt("Descrição:");
    var data = { aid: aid, estado: "inativo", descricao: descricao };

    $.post({
        url: "http://alunos.di.uevora.pt/tweb/t1/controloanuncio",
        data,
        success: function (data) {
            if (data.resultado == "ok") {
                alert("Alteração feita com sucesso");
                location.reload();
            } else {
                alert(
                    "Erro na execução da alteração (não inclua caracteres acentuados na descrição)"
                );
            }
        },
    });
}

function modifyAdStateFromInativo(aid) {
    var descricao = prompt("Descrição:");
    var data = { aid: aid, estado: "ativo", descricao: descricao };

    $.post({
        url: "http://alunos.di.uevora.pt/tweb/t1/controloanuncio",
        data,
        success: function (data) {
            if (data.resultado == "ok") {
                alert("Alteração feita com sucesso");
                location.reload();
            } else {
                alert(
                    "Erro na execução da alteração (não inclua caracteres acentuados na descrição)"
                );
            }
        },
    });
}

