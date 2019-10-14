/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

/**
 *
 * @author Oshin
 */
public class Conexion {
    
    private final static Logger logger = LogManager.getLogger(Conexion.class);

    public Connection obtenerConexion() {
        try {
            Class.forName("org.postgresql.Driver");
            Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Pingpong", "Santiago", "password");
            return c;
        } catch (ClassNotFoundException | SQLException ex) {
            logger.error("Excepcion ", ex);
            ex.printStackTrace();
        }
        return null;
    }

    public void cerrarConexion(Connection laConexion) {
        try {
            laConexion.close();
        } catch (SQLException ex) {
            logger.error("Excepcion ", ex);
        }

    }
}
