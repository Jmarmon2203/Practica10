/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Articulo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author usuario
 */
@WebServlet(name = "ServletArticulos", urlPatterns = {"/ServletArticulos"})
public class ServletArticulos extends HttpServlet {

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
        HttpSession ses = request.getSession();
        List <Articulo> articulos;
        String seccion = request.getParameter("seccion");
        
        String detMesa = "ServletDetalles?idPara=1";
        String detTablones = "ServletDetalles?idPara=2";
        String detPuerta = "ServletDetalles?idPara=3";
        String detHacha = "ServletDetalles?idPara=4";
        String detBrotes = "ServletDetalles?idPara=5";
        
            try {
                Connection connection = ConexionDB.getConnection();
                String query = "SELECT * FROM Articulo";
                PreparedStatement statement = connection.prepareStatement(query);
                ResultSet resultSet = statement.executeQuery();

                articulos = new ArrayList();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String nombre = resultSet.getString("nombre");
                    double precio = resultSet.getDouble("precio");
                    Date fecha = resultSet.getDate("fecha");
                    String imagen = resultSet.getString("imagen");
                    String descripcion = resultSet.getString("descripcion");
                    
                    articulos.add(new Articulo (id, nombre, imagen, precio, fecha, descripcion));
                }
                
                resultSet.close();
                statement.close();
                connection.close();
                ses.setAttribute("lista_articulos", articulos);
                RequestDispatcher dispatcher = request.getRequestDispatcher(seccion + ".jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                ex.printStackTrace();
        }
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

}
