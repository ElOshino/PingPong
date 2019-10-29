/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Estudiantes;
import co.edu.ucentral.EstudiantesJpaController;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Oshin
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

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

        //me llega la url "proyecto/login/out"
        String action = (request.getPathInfo() != null ? request.getPathInfo() : "");
        HttpSession sesion = request.getSession();
        if (action.equals("/out")) {
            sesion.invalidate();
            response.sendRedirect("/ingresoeje.jsp");
        } else {

        }
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
        processRequest(request, response);
        HttpSession sesion = request.getSession();
        String usu, pass;
        usu = request.getParameter("user");
        pass = request.getParameter("password");

        List<Estudiantes> usuarios = new ArrayList();
        EstudiantesJpaController usuariosJpaController = new EstudiantesJpaController(emf);
        usuarios = usuariosJpaController.findEstudiantesEntities();
        for (int i = 0; i < usuarios.size(); i++) {
            if (usu.equals(usuarios.get(i).getNombreUsuario()) && pass.equals(usuarios.get(i).getClave())) {
                sesion.setAttribute("usuario", usu);
                //redirijo a página con información de login exitoso
                response.sendRedirect("adminInicio.jsp");
                System.out.println("Inicio");
            } else {
                //lógica para login inválido
                System.out.println("error");
            }
        }
//        //deberíamos buscar el usuario en la base de datos, pero dado que se escapa de este tema, ponemos un ejemplo en el mismo código
//        if (usu.equals("admin") && pass.equals("admin") && sesion.getAttribute("usuario") == null) {
//            //si coincide usuario y password y además no hay sesión iniciada
//          
//        } else {
//            
//        }
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

    private void loginF(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession sesion = request.getSession();
        String usu, pass;
        usu = request.getParameter("user");
        pass = request.getParameter("password");

        List<Estudiantes> usuarios = new ArrayList();
        EstudiantesJpaController usuariosJpaController = new EstudiantesJpaController(emf);
        usuarios = usuariosJpaController.findEstudiantesEntities();
        for (int i = 0; i < usuarios.size(); i++) {
            if (usu.equals(usuarios.get(i).getNombreUsuario()) && pass.equals(usuarios.get(i).getClave())) {
                sesion.setAttribute("usuario", usu);
                //redirijo a página con información de login exitoso
                response.sendRedirect("adminInicio.jsp");
                System.out.println("Inicio");
            } else {
                //lógica para login inválido
                System.out.println("error");
            }
        }
    }

}
