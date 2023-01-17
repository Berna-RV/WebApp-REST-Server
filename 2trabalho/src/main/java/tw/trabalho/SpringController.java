package tw.trabalho;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import net.minidev.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
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
    private MsgDao msgDao;

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

    @GetMapping("/roomRentEvora/newuser")
    public String newuser(Model model) {
        model.addAttribute("title", "New User");
        model.addAttribute("message", "fill new user's details");
        // DESCOMENTAR ADIANTE
        // List<String> currentUsers = userDao.getUsernameList();
        // model.addAttribute("message", "(we have now " + currentUsers.size() + " users) fill new user's details");
        // System.out.println("\n" + currentUsers.size() + " USERS: " + currentUsers.toString());
        return "newuser";
    }

    @GetMapping("/roomRentEvora/register")
    public String register(@RequestParam String username,
            @RequestParam String password,
            @RequestParam String email1,
            @RequestParam String email2,
            Model model) {

        model.addAttribute("title", "registration page");
        // check if email1.equals(email2)
        if (email1.equals(email2)) {
            String encodedPassword = new BCryptPasswordEncoder().encode(password);
            User u = new User(username, encodedPassword, email1, "ROLE_USER");
            userDao.saveUser(u);  // escrever na BD
            System.out.println("GRAVAR na BD: " + u.toString());
            model.addAttribute("user", u.toString());   // deixar à disposição da view 
            model.addAttribute("message", "registration is OK");
        } else {
            model.addAttribute("user", "");
            model.addAttribute("message", "emails do not match");

        }
        return "register";
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
    public String getAnunciosByTypo(@RequestParam(name = "tipo") String tipo) {
        List<Anuncio> listaAnuncios = anuncioDao.getAnunciosListByTipoAnuncio(tipo);

        return listaAnuncios.toString();
    }

    @PostMapping("/roomRentEvora/AdByAid")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public Anuncio getAnuncioByAid(@RequestParam(name = "aid") String aid) {

        return anuncioDao.getAnuncioByAid(aid);

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

    @PostMapping("/user/roomRentEvora/contactar")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject receiveMessage(HttpServletRequest request, @RequestParam(name = "aid") String aid, @RequestParam(name = "msg") String mensagem) {
        JSONObject json = new JSONObject();
        String username = request.getRemoteUser();
        Msg newMsg = new Msg(mensagem, aid, username);

        msgDao.saveMsg(newMsg);

        json.put("resultado", "ok");

        return json;
    }

    @PostMapping("/user/roomRentEvora/lerMensagens")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject readMensagens(HttpServletRequest request) {

        JSONObject response = new JSONObject();
        String username = request.getRemoteUser();

        List<Msg> listaMensagens = msgDao.readMsgToUserByUsername(username);

        response.put("msgs", listaMensagens.toString());
        response.put("resultado", "ok");
        return response;
    }

    @PostMapping("/user/roomRentEvora/registaprocura")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject receiveProcura(HttpServletRequest request, @RequestParam(name = "tipo_alojamento") String tipo_alojamento, @RequestParam(name = "detalhes") String detalhes, @RequestParam(name = "genero") String genero, @RequestParam(name = "anunciante") String anunciante, @RequestParam(name = "zona") String zona, @RequestParam(name = "data") String data, @RequestParam(name = "preco") String preco, @RequestParam(name = "contacto") String contacto) {
        JSONObject json = new JSONObject();
        String username = request.getRemoteUser();
        Anuncio ad = new Anuncio("procura", tipo_alojamento, detalhes, zona, genero, preco, anunciante, contacto, data, "inativo", username);

        anuncioDao.saveAnuncio(ad);

        json.put("resultado", "ok");

        return json;
    }

    @PostMapping("/user/roomRentEvora/registaoferta")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject receiveOferta(HttpServletRequest request, @RequestParam(name = "tipo_alojamento") String tipo_alojamento, @RequestParam(name = "detalhes") String detalhes, @RequestParam(name = "genero") String genero, @RequestParam(name = "preco") String preco, @RequestParam(name = "nomeAlojamento") String nomeAlejamento, @RequestParam(name = "zona") String zona, @RequestParam(name = "data") String data, @RequestParam(name = "contacto") String contacto, @RequestParam(name = "anunciante") String anunciante, @RequestParam(name = "mail") String mail) {
        JSONObject json = new JSONObject();
        String username = request.getRemoteUser();

        Anuncio ad = new Anuncio("oferta", tipo_alojamento, detalhes, zona, genero, preco, anunciante, contacto, data, "inativo", username);

        anuncioDao.saveAnuncio(ad);

        json.put("resultado", "ok");

        return json;

    }

    // admin methods
    @GetMapping("/admin/roomRentEvora/administracao")
    public String adminAdministracao(Model model) {
        return "administracao";
    }

    @PostMapping("/admin/roomRentEvora/gereAnuncios")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject sendAdminAds() {
        JSONObject response = new JSONObject();
        List<Anuncio> ativos = anuncioDao.getAnuncioByEstado("ativo");

        response.put("ativo", ativos.toString());

        List<Anuncio> inativos = anuncioDao.getAnuncioByEstado("inativo");

        response.put("inativo", inativos.toString());

        return response;
    }

    @PostMapping("/admin/roomRentEvora/controloAnuncio")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public JSONObject modifyState(@RequestParam(name = "aid") String aid, @RequestParam(name = "estado") String estado) {
        JSONObject response = new JSONObject();

        anuncioDao.modifyAdState(aid, estado);

        response.put("resultado", "ok");

        return response;

    }
}
