package tw.trabalho;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import net.minidev.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author berna-dev
 *
 */
@Controller
public class SpringController {

    @Autowired
    private UserDao userDao;

    @Autowired
    private AnuncioDao anuncioDao;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/login")
    public String loginPage(Model model, @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        if (error != null) {
            model.addAttribute("error", "Invalid Credentials");
        }
        if (logout != null) {
            model.addAttribute("msg", "You have been successfully logged out");
        }
        return "login";
    }

    // not authenticated users methods
    @GetMapping("/roomRentEvora/home")
    public String nAUserHomePage(Model model) {
        return "roomRentEvora";
    }

    @GetMapping("/roomRentEvora/contactos")
    public String nAUserContactos(Model model) {
        return "contactos";
    }

    @GetMapping("/roomRentEvora/listaDeProcuras")
    public String nAUserListaDeProcuras(Model model) {
        return "procurasList";
    }

    @GetMapping("/roomRentEvora/listaDeOfertas")
    public String nAUserListaDeOfertas(Model model) {
        return "ofertasList";
    }

    @PostMapping("/roomRentEvora/lista")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public String getAnunciosByTypo(@RequestParam(name="tipo") String tipo) {
        JSONObject json = new JSONObject();
        List<Anuncio> listaAnuncios = anuncioDao.getAnunciosListByTipoAnuncio(tipo);

        return listaAnuncios.toString();
    }

// authenticated users methods
    @GetMapping("/user/roomRentEvora/registarProcura")
    public String userRegistarProcura(Model model) {
        return "procura";
    }

    @GetMapping("/user/roomRentEvora/registar0ferta")
    public String userRegistarOferta(Model model) {
        return "oferta";
    }

    @GetMapping("/user/roomRentEvora/mensagens")
    public String userMensagensList(Model model) {
        return "mensagens";
    }

    // admin methods
    @GetMapping("/admin/roomRentEvora/administracao")
    public String adminAdministracao(Model model) {
        return "administracao";
    }

}
