/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.sqlconn;

/**
 *
 * @author 1305016
 */
public class payment_sport extends HttpServlet {

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
        
        
        
        
     //for session, cretriving rollno & gender   
        
        
        HttpSession session=request.getSession();
        String sessionRoll_string=(String)session.getAttribute("session_user_roll_number");
    int sessionRoll=Integer.parseInt(sessionRoll_string);
    out.println(sessionRoll);
  
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
  
    try
    {
        sqlconn c =new sqlconn();
        con=c.getconn();
           
           
        ps=con.prepareStatement("Select user_sex from user_details where user_roll_number=?");
        ps.setInt(1, sessionRoll);
        rs=ps.executeQuery();
        
        if(rs.next())
        {

            int sex=rs.getInt(1);
            if(sex==1)
            {
                //male
            }
            else if(sex==2)
            {
                //female
            }
            
           
        }
        
    }
    catch(Exception e)
    {
        out.println(e);
    }
    finally
    {
        
        try
        {
            con.close();
            ps.close();
            rs.close();
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
    }
        
        
        
        
        
        
        
        
        
        
        
        
        String sportCode=request.getParameter("button");
        String daySlot= request.getParameter("day_slot");
        String timeSlot= request.getParameter("time_slot");
        
       
        String tableData=null;
        String slotData=null;
        
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet payment_sport</title>");            
            out.println("</head>");
            out.println("<body>");
            
            out.print("You have registered for ");
            switch(sportCode)
            {
                case "sw1":
                {
                    out.print("Swimming");
                    if(daySlot.equals("MWF"))
                    {
                        out.print(" for MWF (Monday-Wednesday-Friday) slot ");
                    }
                    else
                    {
                        out.print("for TTS (Tuesday-Thusrsday-Saturday) slot ");
                    }
                    
                    
                  break;  
                }
                
                case "gy5":
                {
                     out.print("Gym ");
                     
                  break;
                }
                
                    case "as3":
                {
                     out.print("Basketball");
                     
                  break;
                }
                
                    case "bd2":
                {
                     out.print("Badminton ");
                     
                  break;
                }
                    case "lw4":
                {
                     out.print("Lawn Tennis ");
                     
                  break;
                }
                    case "po7":
                {
                     out.print("Pool");
                     
                  break;
                }
                    case "tt6":
                {
                     out.print("Table Tennis");
                     
                  break;
                }
                
                
                
              
                
            }
            
            switch(timeSlot)
            {
                case "m1":
                {
                    out.print(" at 6 - 7 AM ");
                 break; 
                }
                case "m2":
                {
                    out.print(" at 7 - 8 AM ");
                  break;
                }
                
                case "m3":
                {
                    out.print(" at 8 - 9 AM ");
                 break; 
                }
                case "e1":
                {
                    out.print(" at 6 - 7 PM ");
                  break;
                }
                case "e2":
                {
                    out.print(" at 7 - 8 PM ");
                  break;
                }
                
                
            }
            
            
            
            
            /*
            //out.println(timeSwimming);
            //ut.println(buttonName);
            if(button.equals("sw1"))
            {
            //out.println(slotSwimming);
            
            
            
                out.println(" for slot ");
                if(slotSwimming.equals("1"))
                {
                    out.print(" 'M W F' ");
                }
                else if(slotSwimming.equals("2"))
                {
                    out.print(" 'T T S' ");
                }
           
            }
            out.print(" for timing " );
            
            out.println(timeSwimming.substring(0, 1) + " - " + timeSwimming.substring(1, 2) + " " + timeSwimming.substring(2,3).toUpperCase()+ "M ");
            
            out.println("<h3>Please pay Rs 300.</h3>");
            
            
            
            out.println("<h1>Servlet payment_sport at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        
    */
    
    
        
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
