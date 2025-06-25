// Este archivo forma parte del paquete donde están los "repositorios" o "acceso a datos"
package com.etica.repository;

// Importamos la clase Usuario (nuestra entidad)
import com.etica.model.Usuario;

// Importamos JpaRepository para extenderlo
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * Esta interfaz representa el "repositorio" para la entidad Usuario.
 * Spring Boot crea automáticamente los métodos para acceder a la base de datos:
 * - Buscar por ID
 * - Guardar
 * - Eliminar
 * - Listar todos, etc.
 */
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

    /**
     * Busca un usuario por su campo "usuario" (nombre de login)
     * - Optional se usa para manejar el caso en que no se encuentre
     * - Spring implementa este método automáticamente gracias al nombre del método
     */
    Optional<Usuario> findByUsuario(String usuario);
}
