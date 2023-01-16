package tw.trabalho;

import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author berna-dev
 */
public class AnuncioRowMapper implements RowMapper<Anuncio>{
    
    @Override
	public Anuncio mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new Anuncio(rs.getLong("anuncio_id"), rs.getString("tipoAnuncio"), rs.getString("tipologia"), rs.getString("detalhes"), 
                        rs.getString("localizacao"), rs.getString("genero"), rs.getString("preco"), rs.getString("anunciante"), rs.getString("contacto"),
                        rs.getString("data"), rs.getString("estado"), rs.getString("anuncio_user_name"));
	}
    
    
    
}
