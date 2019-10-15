
import co.edu.ucentral.UsuariosJpaController;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Usuarios;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Oshin
 */
public class inio {

    public static void main(String[] args) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("pingpongPU");
        UsuariosJpaController usuariosJpaController = new UsuariosJpaController(emf);
       
        Usuarios usuarios = new Usuarios();
        
        usuarios.setCedula("121");
        usuarios.setClave("12345");
        usuarios.setNombre("Carlos");
        usuarios.setNombreUsuario("Carlos1");
        usuarios.setTelefono("123456");
        usuarios.setCorreo("sacgaQfdsf");
        
        usuariosJpaController.create(usuarios);
       
    }
}

