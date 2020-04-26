/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Francisco_Antonio
 */
@WebServlet(name = "Parametros", urlPatterns = {"/Parametros"}, initParams = {
    @WebInitParam(name = "param1", value = "Yo"),
    @WebInitParam(name = "param2", value = "Soy"),
    @WebInitParam(name = "param3", value = "Groot")})
public class Parametros extends HttpServlet {
// NO HAS IMPLEMENTADO EL MÉTODO init QUE ES DONDE SE COGEN LOS PARÁMENTROS INICIALES
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */


            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Par&aacute;metros</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Servlet Par&aacute;metros. </h1>");

            out.println("Parametro 1: "+request.getParameter("param1")+"<br>");
            out.println("Parametro 2: "+request.getParameter("param2")+"<br>");
            out.println("Parametro 3: "+request.getParameter("param3"));
            out.println("<br>");
            out.println("<br>");
            out.println("<a href=\"http://localhost:8084/PracticasFranciscoAMP/Parametros?param1=Yo&param2=Soy&param3=Goot\">Mandar parametros</a>");


            out.println("<p align=\"center\"><a href=\"index.html\">Menú Principal</a></p>");
            out.println("</body>");
            out.println("</html>");


        }
    }




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
