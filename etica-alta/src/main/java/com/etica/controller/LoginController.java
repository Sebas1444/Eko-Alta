package com.etica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // Mapea la ruta /login para mostrar la página de login.
    @GetMapping("/login")
    public String login() {
        return "login";  // Hace referencia a la plantilla login.html en src/main/resources/templates
    }
}
