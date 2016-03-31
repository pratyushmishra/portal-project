/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 1305366
 */
public class login extends HttpServlet {

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
            out.println("<title> login page</title>");
            out.println("<meta name=viewport content=width=device-width, initial-scale=1>");
            out.println("<link rel=stylesheet href=w3.css>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            
            
            
            
         
         
         out.println("<form action=login_check.do class=w3-container method=post><h2>Input Form</h2><p>    ");  
out.println("<p>");      
out.println("<input class= w3-input  type= number   name=loginRollNumber  required>");
out.println("<label class= w3-label w3-validate >Roll Number</label></p>");

out.println("<p>");      
out.println("<input class= w3-input  type=password  name=loginPassword  required>");
out.println("<label class= w3-label w3-validate >Password</label></p>");

out.println("<p>");      
out.println("<button class= w3-btn w3-teal >LOGIN</button></p>");

out.println("</form>");
         
        List error=(List)request.getAttribute("login_error_message");
        Iterator items=error.iterator();
        
   
  while(items.hasNext())
           {
               out.println("<font color='red'>please correct the following errors");
            out.println("<ul>");

                String msg=(String)items.next();
           
          
               out.println("<li>"+msg);
          
           }
           out.println("</ul>");
           out.println("</font>");
            
            
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
