/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.sqlconn;

/**
 *
 * @author 1305366
 */
public class edit_profile extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            boolean rf=false;
            
             String user_name= request.getParameter("name");
             String user_password=request.getParameter("password");
              String user_roll_number=request.getParameter("roll_numb");
              String user_email_id=request.getParameter("emailid");
           String user_contact_number=  request.getParameter("contact_number");
          // out.println(user_roll_number);
           //int rn=Integer.parseInt(user_roll_number);
          // out.println(rn);
          // String user_contact_number = new BigInteger(contact);
            //  int user_sex=Integer.parseInt(request.getParameter("userSex"));
              //int regId=1111111;
             // int user_status=2;
              
             
           
                
            
                
            try{
                
              //   Class.forName("com.mysql.jdbc.Driver");
           // con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal_project","root","pratyush") ;
                 sqlconn c =new sqlconn();
                  con=c.getconn();
                  //out.println(user_name);
              ps=con.prepareStatement("update user_details set user_name='"+user_name+ "',user_email_id='"+user_email_id+"',user_contact_number='"+user_contact_number+"' where user_roll_number=" +user_roll_number);
               ps.executeUpdate();
               
            RequestDispatcher rd=request.getRequestDispatcher("edit_profile.jsp");
                        rd.forward(request,response);
           
             
            } 
            catch(Exception ex){
            out.println(ex);
            }
        finally{
            try{
            con.close();
            ps.close();
            rs.close();
            
            
            }catch(Exception ex){
            }
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
