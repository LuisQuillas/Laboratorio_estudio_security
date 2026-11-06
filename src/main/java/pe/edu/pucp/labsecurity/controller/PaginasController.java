package pe.edu.pucp.labsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaginasController {

    @GetMapping({"/", "/product"})
    public String productos() {
        return "product/list";
    }

    @GetMapping("/employee")
    public String empleados() {
        return "employee/list";
    }

    @GetMapping("/shipper")
    public String transportistas() {
        return "shipper/list";
    }

    // Solo para poder ver la pagina 403 sin tener Security configurado.
    // Con Security, Spring Boot muestra templates/error/403.html automaticamente.
    @GetMapping("/acceso-denegado")
    public String accesoDenegado() {
        return "error/403";
    }
}
