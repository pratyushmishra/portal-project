/*
author : raghu | pratyush
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.sqlconn;
import model.user_model;

public class login_check extends HttpServlet {

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
        
         
        //GETTING DATA FROM TEXT FIles from LOGIN FORM
        String loginRollNumber=request.getParameter("loginRollNumber");
        String loginPassword=request.getParameter("loginPassword");
        
        //MAKING ERROR LIST
        List login_error=new LinkedList();
        request.setAttribute("login_error_message", login_error);
        
        
        /*
        // for null entries
        if(loginRollNumber.length()==0)
        {
            login_error.add("Enter your roll no.");
        }
        if(loginPassword.length()==0)
        {
            login_error.add("Enter your password");
        }
        */
        
        
        
        // for loading data from user_details
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
             
        try{
            
            sqlconn c =new sqlconn();
            con=c.getconn();
            Statement stmt=con.createStatement();
            rs=stmt.executeQuery("select user_password,user_type from user_details where user_roll_number = " + loginRollNumber);  
                //rs=stmt.
                if(!rs.next())
                {
                    login_error.add("roll no not exist");
                }
                else{
                    
                    if(rs.getString(1).equals(loginPassword))
                    {
                        
                        //25 feb sanjog
                        if(rs.getInt(2)==2)
                        {
                        //
                            //RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
                            //rd.forward(request,response);
                            
                            //for redirecting
                            response.sendRedirect("home.jsp");
                        
                            
            //getting sex from rollno
                            //parsing rollno to int
                            int rollno=Integer.parseInt(loginRollNumber);
                            //calling user_model class
                            user_model user=new user_model();
                            int sex=user.get_sex(rollno);
   
                            //putting data to session
                            HttpSession session=request.getSession();
                            session.setAttribute("session_user_roll_number", loginRollNumber);
                            session.setAttribute("session_user_sex", sex);
                            
                            
                        } 
                        else
                        {
                            //RequestDispatcher rd=request.getRequestDispatcher("admin_home.jsp");
                            //rd.forward(request,response);
                            response.sendRedirect("admin_home.jsp");
                           
                            //enter session
                            
                        }
                    }
                    else
                    {
                        login_error.add("password incorrect");
                    }
                    
                }
                
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
        
        
        if(!login_error.isEmpty())
        {
             request.setAttribute("login_error_message", login_error);
            RequestDispatcher rd=request.getRequestDispatcher("login.view");
            rd.forward(request,response);
            
        }
        
            
            
            
        try  {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login_check</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login_check at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            
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
