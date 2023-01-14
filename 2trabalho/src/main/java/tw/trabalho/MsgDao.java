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
        String sql = "INSERT INTO user VALUES ( DEFAULT,'"
                + msg.getMsg()+ "','"
                + msg.getAnuncioMsg_id()+ "')";
        jdbcTemplate.execute(sql);
        System.out.println("MsgDao - saved\n" + sql + "\n");
    }
    
    
}
