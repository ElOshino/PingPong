
import co.edu.ucentral.EstudiantesJpaController;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Estudiantes;

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
        EstudiantesJpaController usuariosJpaController = new EstudiantesJpaController(emf);
       
        Estudiantes estudiantes = new Estudiantes();
        
        estudiantes.setCedula("121");
        estudiantes.setClave("12345");
        estudiantes.setNombre("Carlos");
        estudiantes.setApellido("lia");
        estudiantes.setNombreUsuario("Carlos1");
        estudiantes.setTelefono("123456");
        estudiantes.setCorreo("sacgaQfdsf");
        
        usuariosJpaController.create(estudiantes);
       
    }
}

