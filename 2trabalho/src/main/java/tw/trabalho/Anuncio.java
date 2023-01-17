package tw.trabalho;

/**
 *
 * @author berna-dev
 */
public class Anuncio {

    //private Long anuncio_id;
    private String tipoAnuncio;
    private String tipologia;
    private String detalhes;
    private String localizacao;
    private String genero;
    private String preco;
    private String anunciante;
    private String contacto;
    private String data;
    private String estado;
    private String anuncio_user_name;

    public Anuncio(String tipoAnuncio, String tipologia, String detalhes, String localizacao, String genero, String preco, String anunciante, String contacto, String data, String estado, String anuncio_user_name) {
        //this.anuncio_id=anuncio_id;
        this.tipoAnuncio = tipoAnuncio;
        this.tipologia=tipologia;
        this.detalhes=detalhes;
        this.localizacao=localizacao;
        this.genero=genero;
        this.preco=preco;
        this.anunciante=anunciante;
        this.contacto=contacto;
        this.data=data;
        this.estado=estado;
        this.anuncio_user_name=anuncio_user_name;
        
    }

    //public void setAid(Long anuncio_id) {
        //this.anuncio_id = anuncio_id;
    //}

    //public Long getAid() {
        //return anuncio_id;
    //}

    public void setTipoAnuncio(String tipo_anuncio) {
        this.tipoAnuncio = tipo_anuncio;
    }

    public String getTipoAnuncio() {
        return tipoAnuncio;
    }

    public void setTipologia(String tipologia) {
        this.tipologia = tipologia;
    }

    public String getTipologia() {
        return tipologia;
    }

    public void setDetalhes(String detalhes) {
        this.detalhes = detalhes;
    }

    public String getDetalhes() {
        return detalhes;
    }

    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }

    public String getLocalizacao() {
        return localizacao;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getGenero() {
        return genero;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }

    public String getPreco() {
        return preco;
    }

    public void setAnunciante(String anunciante) {
        this.anunciante = anunciante;
    }

    public String getAnunciante() {
        return anunciante;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getContacto() {
        return contacto;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getData() {
        return data;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEstado() {
        return estado;
    }

    public void setAnuncio_user_name(String anuncio_user_name) {
        this.anuncio_user_name = anuncio_user_name;
    }

    public String getAnuncio_user_name() {
        return anuncio_user_name;
    }

    @Override
    public String toString() {
        return "{ \"aid\": \"" + anuncio_id
                + "\", \"tipoDeAnuncio\": \"" + tipoAnuncio
                + "\", \"tipologia\": \"" + tipologia
                + "\", \"detalhes\": \"" + detalhes
                + "\", \"localizacao\": \"" + localizacao
                + "\", \"genero\": \"" + genero
                + "\", \"preco\": \"" + preco
                + "\", \"anunciante\": \"" + anunciante
                + "\", \"contacto\": \"" + contacto
                + "\", \"data\": \"" + data
                + "\", \"estado\": \"" + estado
                + "\", \"anuncioUsername\": \"" + anuncio_user_name
                + "\"}";
    }
}
