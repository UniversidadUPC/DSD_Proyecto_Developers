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
import pe.com.lacaja.client.Consulta;
import pe.com.lacaja.client.LaCajaServiceImplService;

/**
 *
 * @author AlfredoRegis
 */
@WebServlet(name = "ConsultaServlet", urlPatterns = {"/ConsultaServlet"})
public class ConsultaServlet extends HttpServlet {
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
            out.println("<title>Servlet ConsultaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConsultaServlet at " + request.getContextPath() + "</h1>");
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
                        
                String nroDoc = request.getParameter("vNroDoc");
                List<Beneficiario> benef = getBeneficiario(nroDoc);
                request.setAttribute("benef", benef);                                
                        
                List<Consulta> consultas = getConsultas(nroDoc);
                request.setAttribute("consultas", consultas);                  
                
                int ConId = 0;
                try { ConId = Integer.parseInt(request.getParameter("vConId"));}catch(Exception e){}
                
                RequestDispatcher rd;
                if (ConId == 0){
                    rd = getServletContext().getRequestDispatcher("/listaConsultas.jsp");
                    //rd = getServletContext().getRequestDispatcher("/prueba.jsp");
                }else{
                    request.setAttribute("vConId", ConId);
                    rd = getServletContext().getRequestDispatcher("/listaConsultasDetalle.jsp");
                }
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
        
            int ConId = 0;
            try { ConId = Integer.parseInt(request.getParameter("vConId"));}catch(Exception e){}

            String nroDoc = request.getParameter("vNroDoc");
            String vCodPer = request.getParameter("vCodPer");
            
            RequestDispatcher rd;
            if (ConId == 0){                
                String conAsu = request.getParameter("txtasunto");
                String conDes = request.getParameter("txtconsulta");            
                boolean tf = putConsultas(nroDoc,conAsu,conDes);
            }else{
                String rspConDet = request.getParameter("txtRespuesta");
                boolean tf = putConsultaRespuesta(ConId,rspConDet,nroDoc);
            }
            request.setAttribute("vCodPer", vCodPer);
            request.setAttribute("vNroDoc", nroDoc);
            doGet(request, response);            
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

    private java.util.List<pe.com.lacaja.client.Consulta> getConsultas(java.lang.String arg0) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.getConsultas(arg0);
    }

    private java.util.List<pe.com.lacaja.client.Beneficiario> getBeneficiario(java.lang.String arg0) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.getBeneficiario(arg0);
    }

    private boolean putConsultas(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.putConsultas(arg0, arg1, arg2);
    }

    private boolean putConsultaRespuesta(int arg0, java.lang.String arg1, java.lang.String arg2) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pe.com.lacaja.client.LaCajaService port = service.getLaCajaServiceImplPort();
        return port.putConsultaRespuesta(arg0, arg1, arg2);
    }
}
