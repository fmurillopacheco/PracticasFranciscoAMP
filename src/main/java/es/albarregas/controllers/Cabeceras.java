/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Francisco_Antonio
 */
@WebServlet(name = "Cabeceras", urlPatterns = {"/Cabeceras"})
public class Cabeceras extends HttpServlet {

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
            // NO HAS PUESTO EL NOMBRE DE LAS CABECERAS EN CASTELLANO
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Cabecera</title>"); 
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/estilo.css\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Cabecera at " + request.getContextPath() + "</h1>");
            out.println("<p><strong>" + request.getHeaderNames() + "</strong></p>");
            out.println("</body>");
            out.println("</html>");
 /*          
            Enumeration<String> headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String headerName = headerNames.nextElement();
                out.write(headerName);
                out.write(":<br>");

                Enumeration<String> headers = request.getHeaders(headerName);
                while (headers.hasMoreElements()) {
                    String headerValue = headers.nextElement();
                        out.write("\t" + headerValue);
                        out.write("<br>");
                        out.write("<br>");
                }
            }*/
        Enumeration cabeceras = request.getHeaderNames();

	while (cabeceras.hasMoreElements())
	{		
		String nombre = (String)(cabeceras.nextElement());
		out.println ("<strong>Nombre Cabecera: </strong>" + nombre + 
		   "<br> <strong>Valor: </strong>" + request.getHeader(nombre));
		out.println ("<BR><BR>");
	}
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
