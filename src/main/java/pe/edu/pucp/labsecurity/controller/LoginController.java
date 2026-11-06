package pe.edu.pucp.labsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // Solo el GET. El POST /processLogin lo atiende Spring Security
    // (loginProcessingUrl), no se programa.
    @GetMapping("/loginForm")
    public String loginForm() {
        return "login/form";
    }
}
