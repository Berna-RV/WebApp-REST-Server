package tw.trabalho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
    
    
}
