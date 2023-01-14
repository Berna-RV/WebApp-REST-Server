package tw.trabalho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author berna-dev
 */

@Repository
public class AnuncioDao {
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    public void saveAnuncio(final Anuncio ad){
        String sql = "INSERT INTO user VALUES ( DEFAULT,'"
                + ad.getTipoAnuncio()+ "','"
                + ad.getTipologia()+ "','"
                + ad.getDetalhes() + "','"
                + ad.getLocalizacao() + "','"
                + ad.getGenero() + "','"
                + ad.getPreco() + "','" 
                + ad.getAnunciante() + "','" 
                + ad.getContacto() + "','" 
                + ad.getData() + "','" 
                + ad.getEstado() + "','" 
                + ad.getAnuncio_user_name() + "')";
        jdbcTemplate.execute(sql);
        System.out.println("AnuncioDao - saved\n" + sql + "\n");
    }
}
