package tw.trabalho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 *
 * @author berna-dev
 */
@Repository
public class MsgDao {
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    public void saveMsg(final Msg msg){
        String sql = "INSERT INTO msg_table VALUES ( DEFAULT,'"
                
                + msg.getAnuncioMsg_id()+ "','"
                + msg.getRemetente()+ "','"
                + msg.getMsg()+ "')";
        jdbcTemplate.execute(sql);
        System.out.println("MsgDao - saved\n" + sql + "\n");
    }
    
    
    public List<Msg> readMsgToUserByUsername(String username){
        return jdbcTemplate.query("select * from msg_table, anuncio_table where msg_table.anuncioMsg_id=anuncio_table.anuncio_id and anuncio_table.anuncio_user_name='" + username + "'", new MsgRowMapper());
    }
}
