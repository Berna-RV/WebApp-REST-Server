package tw.trabalho;

/**
 *
 * @author berna-dev
 */
public class Msg {

    private String msg;
    private long anuncioMsg_id;
    private String remetente;

    public Msg(String msg, String anuncioMsg_id, String remetente) {
        this.msg = msg;
        this.anuncioMsg_id = Long.valueOf(anuncioMsg_id);
        this.remetente = remetente;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public long getAnuncioMsg_id() {
        return anuncioMsg_id;
    }

    public void setAnuncioMsg_id(long anuncioMsg_id) {
        this.anuncioMsg_id = anuncioMsg_id;
    }

    public String getRemetente() {
        return remetente;
    }

    public void setRemetente(String remetente) {
        this.remetente = remetente;
    }

    @Override
    public String toString() {
        return "{ \"remetente\": \"" + remetente
                + "\", \"msg\": \"" + msg
                + "\"}";
    }
}
