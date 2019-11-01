/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import co.edu.ucentral.EstudiantesJpaController;
import co.edu.ucentral.exceptions.NonexistentEntityException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Estudiantes;

/**
 *
 * @author Oshin
 */
@WebServlet(name = "estudianteCtrl", urlPatterns = {"/estudianteCtrl"})
public class estudianteCtrl extends HttpServlet {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("pingpongPU");

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        EstudiantesJpaController estudiantesJpaController = new EstudiantesJpaController(emf);
        List<Estudiantes> estudianes = estudiantesJpaController.findEstudiantesEntities();
        request.setAttribute("estudiantes", estudianes);
        request.getRequestDispatcher("/listarEstudiantes.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion.equals("crear")) {
            crearEstudiante(request, response);
        } else if (accion.equals("Editar")) {

            // actualizarPaciente(request, response);
        } else if (accion.equals("borrar")) {
            borrarEstudiante(request, response);
        }

    }

    private void borrarEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("idEstudiante"));
        EstudiantesJpaController usuariosJpaController = new EstudiantesJpaController(emf);
        String mensaje;
        try {
            usuariosJpaController.destroy(id);
            mensaje = "Paciente borrado exitosamente";
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(estudianteCtrl.class.getName()).log(Level.SEVERE, null, ex);
            mensaje = "Paciente no fue borrado";
        }

        request.getSession().setAttribute("Mensaje", mensaje);
        response.sendRedirect("estudianteCtrl");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void crearEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        EstudiantesJpaController usuariosJpaController = new EstudiantesJpaController(emf);
        String cedula = request.getParameter("cedulaEstu");
        String nombre = request.getParameter("nombreEstu");
        String apellido = request.getParameter("apellidoEstu");
        String nombreUsu = request.getParameter("nombreUsu");
        String contraUsu = request.getParameter("contrasenaUsu");
        String telefono = request.getParameter("telefonoEstu");
        String correo = request.getParameter("correoEstu");
        // Date fechaNacimiento = SimpleDateFormat.parse(request.getParameter("fechaNacimientoPaciente"));
//        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
//        Date fechaNacimiento = null;
//        try {
//            fechaNacimiento = formato.parse(request.getParameter("fechaNacimientoPaciente"));
//        } catch (ParseException ex) {
//            System.out.println(ex);
//        }

        Estudiantes estudiante = new Estudiantes();
        estudiante.setCedula(cedula);
        estudiante.setNombre(nombre);
        estudiante.setApellido(apellido);
        estudiante.setNombreUsuario(nombreUsu);
        estudiante.setClave(contraUsu);
        estudiante.setCorreo(correo);
        estudiante.setTelefono(telefono);
        usuariosJpaController.create(estudiante);
        request.getRequestDispatcher("/adminInicio.jsp").forward(request, response);

    }
}
