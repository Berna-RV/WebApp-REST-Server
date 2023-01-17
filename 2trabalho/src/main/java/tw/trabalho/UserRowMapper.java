package tw.trabalho;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author berna-dev
 */

public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new User(rs.getString("user_name"), rs.getString("user_pass"), rs.getString("user_email"), rs.getString("user_role"));
	}

}

