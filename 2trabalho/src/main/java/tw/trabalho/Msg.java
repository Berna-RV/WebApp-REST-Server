package tw.trabalho;

/**
 *
 * @author berna-dev
 */
public class Msg {
    private Long anuncioMsg_id;
    private String msg;
    
    public void Msg(String msg){
        this.msg=  msg;
    }
    
    
    public String getMsg(){
        return msg;
    }
    
    public void setMsg(String msg){
        this.msg=msg;
    }
    
    public Long getAnuncioMsg_id(){
        return anuncioMsg_id;
    }
    
    public void setAnuncioMsg_id(Long anuncioMsg_id){
        this.anuncioMsg_id=anuncioMsg_id;
    }
}
