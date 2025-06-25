package com.etica.controller;

import com.etica.model.Usuario;
import com.etica.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

/**
 * Controlador REST para acceder a los usuarios desde el navegador o herramientas como Postman.
 */
@RestController // Indica que esta clase maneja peticiones HTTP
@RequestMapping("/api/usuarios") // URL base para este controlador
public class UsuarioController {

    @Autowired // Inyecta automáticamente el repositorio
    private UsuarioRepository usuarioRepository;

    /**
     * Endpoint para obtener un usuario por su nombre de usuario
     * Ej: GET http://localhost:8080/api/usuarios/admin
     */
    @GetMapping("/{usuario}")
    public Optional<Usuario> obtenerUsuario(@PathVariable String usuario) {
        return usuarioRepository.findByUsuario(usuario);
    }

    /**
     * (Opcional) Endpoint para obtener todos los usuarios
     * Ej: GET http://localhost:8080/api/usuarios
     */
    @GetMapping
    public Iterable<Usuario> listarUsuarios() {
        return usuarioRepository.findAll();
    }
}
