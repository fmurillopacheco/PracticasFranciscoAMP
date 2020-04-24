/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Francisco_Antonio
 */
@WebServlet(name = "CicloDeVida", urlPatterns = {"/CicloDeVida"})
public class CicloDeVida extends HttpServlet {

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
            out.println("<title>Servlet CicloDeVida</title>"); 
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/estilo.css\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CicloDeVida at " + request.getContextPath() + "</h1>");
            out.println("<p align=\"center\"><a href=\"index.html\">Menú Principal</a></p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public CicloDeVida(){
            super();
            System.out.println("Se crea el Servlet  ...");
        }

    
    public void init(ServletConfig config) throws ServletException {
        System.out.println("Se está ejecutando: INIT" + config.getServletName());
        super.init();
    }

    public void service(HttpServletRequest request, HttpServletRequest response) throws ServletException, IOException {
        System.out.println("Se está ejecutando: SERVICE" + request.getServletPath() + ", " + response.getContextPath());
        super.service(request, (HttpServletResponse) response);
    }

    public void destroy() {
        System.out.println("Se está ejecutando: DESTROY");
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
