// Paquete donde está esta clase. "model" es una convención para clases que representan datos o entidades.
package com.etica.model;

// Importa todas las anotaciones necesarias para JPA (como @Entity, @Id, etc.)
import jakarta.persistence.*;

// Oculta la contraseña
import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Esta clase representa la entidad "usuarios" que existe en la base de datos PostgreSQL.
 * Spring la utilizará para mapear objetos Java ↔ filas en la tabla "usuarios".
 */
@Entity // Marca la clase como una entidad JPA (una tabla en la BD)
@Table(name = "usuarios") // Define el nombre exacto de la tabla en PostgreSQL
public class Usuario {

    @Id // Define el campo "id" como clave primaria
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Hace que se autogenere (tipo SERIAL en PostgreSQL)
    private Long id;

    // Campo "nombre", representa la columna "nombre" de la tabla
    private String nombre;

    @Column(unique = true) // Campo "usuario", no puede repetirse en la BD (clave única)
    private String usuario;

    // Campo "password", representa la contraseña (preferiblemente encriptada)
    @JsonIgnore
    private String password;


    // Campo "rol", indica el tipo de usuario (por ahora: admin)
    private String rol;

    // Métodos getter y setter para que Spring/JPA accedan a las propiedades de forma segura

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
}

