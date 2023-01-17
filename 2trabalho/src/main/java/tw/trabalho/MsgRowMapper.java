package tw.trabalho;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author berna-dev
 */
public class MsgRowMapper implements RowMapper<Msg> {

    @Override
    public Msg mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Msg(rs.getString("msg"), rs.getString("anuncioMsg_id"), rs.getString("remetente"));
    }

}
