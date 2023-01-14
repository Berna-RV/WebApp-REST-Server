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
public class UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public User getUser(final String username) {
        return jdbcTemplate.queryForObject(
                "select u.user_name user_name, u.user_pass user_pass, user_email, ur.user_role user_role from user u where u.user_name = ?",
                new String[]{username}, new UserRowMapper());
    }

    public void saveUser(final User u) {
        String sql = "INSERT INTO user VALUES ('"
                + u.getUsername() + "','"
                + u.getPassword() + "','"
                + u.getEmail() + "')"; 
        jdbcTemplate.execute(sql);
        jdbcTemplate.execute("INSERT INTO user_role VALUES ('" + u.getUsername() + "','" + u.getRole() + "')");
        System.out.println("UserDao - saved\n" + sql + "\n");
    }

    public List<String> getUsernameList() {
        return jdbcTemplate.queryForList("select user_name FROM user", String.class);
    }
}
