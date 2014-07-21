/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.com.lacaja.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import pe.com.lacaja.client.Beneficiario;
import pe.com.lacaja.client.Boleta;
import pe.com.lacaja.client.LaCajaServiceImplService;

/**
 *
 * @author AlfredoRegis
 */
@WebServlet(name = "BoletaServlet", urlPatterns = {"/BoletaServlet"})
public class BoletaServlet extends HttpServlet {
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/WebServiceLaCaja/LaCajaServiceImplService.wsdl")
    private LaCajaServiceImplService service;

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
            out.println("<title>Servlet BoletaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BoletaServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
                String perCod = request.getParameter("vCodPer");                
                List<Boleta> boleta = getBoletas(perCod);
                request.setAttribute("boleta", boleta);
                
                String nroDoc = request.getParameter("hNroDoc");
                List<Beneficiario> benef = getBeneficiario(nroDoc);
                request.setAttribute("benef", benef);                                
                
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoBoletas.jsp");
                rd.forward(request, response); 
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
                
                String perCod = request.getParameter("vCodPer");
                
                List<Boleta> boleta = getBoletas(perCod);
                request.setAttribute("boleta", boleta);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoBoletas.jsp");
                rd.forward(request, response);  
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

    private java.util.List<pe.com.lacaja.client.Boleta> getBoletas(java.lang.String arg0) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.getBoletas(arg0);
    }
    
    private java.util.List<pe.com.lacaja.client.Beneficiario> getBeneficiario(java.lang.String arg0) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.getBeneficiario(arg0);
    }

}
