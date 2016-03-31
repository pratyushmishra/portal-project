<%-- 
    Document   : home
    Created on : 13 Feb, 2016, 1:20:37 AM
    Author     : 1305366
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.sqlconn"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="w3.css">
        
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <%--  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
    
 <style>
#head{
 
}
</style>

        <title>JSP Page</title>
    </head>
    <body>
      
        <%
           try{
             String session_user_roll_number=(String)session.getAttribute("session_user_roll_number");  
       if(session_user_roll_number!=null){  
       
         
      // out.print("Hello, "+name+" Welcome to Profile");  
       %>
    
        <div id="head">        
            <jsp:include page="header.jsp"/>
        </div>
        
        <table class="w3-table w3-striped w3-border" style="width:50%; margin-left: 50px;">
<thead>
<tr class="w3-blue">
  <th>S.no</th>
  <th>Sport Name</th>
  <th>Slot Timing</th>
</tr>
</thead>



 
            <%
                String user_roll_number=(String)session.getAttribute("session_user_roll_number"); 
                
                String slot_id,slot,day;
                int slot_serial;
                
             Connection con=null;
           PreparedStatement ps=null,ps1=null;
           ResultSet rs=null,rs1=null;
           boolean rf=false;
           try{
           sqlconn c =new sqlconn();
           con=c.getconn();
           
          
           int rn=Integer.parseInt(user_roll_number);
           //-swimming---------------------------------------------------------------------------
           
            out.println(" <tr>");
            out.println(" <td>01.</td> ");
            out.println(" <td>Swimming</td> ");
           ps=con.prepareStatement("Select * from swimming_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next()){
//                 roll_number=rs.getInt(2);
                            slot_serial=rs.getInt(3);
                            ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                             ps1.setInt(1, slot_serial);
                             rs1=ps1.executeQuery();
                             if(rs1.next())
                             {
                               // out.println("\n      Timings:"+rs1.getString(5));
                                out.println(" <td> " + rs1.getString(5));
                                slot_id=rs1.getString(2);
                                if(slot_id.substring(7,9).equals("mwf"))
                                {
                                    out.println(" - <span title=Monday|Wednesday|Friday>MWF</span> </td>");
                                    
                                }
                                else
                                {
                                    out.println(" - <span title=Tuesday|Thursday|Saturday>TTS</span> </td>");
                                }
                             }
                            }
           else
            {
                out.println("<td> Not Registered </td>");
            }
                out.println(" </tr> ");
    
                  
             //gym------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>02.</td> ");
            out.println(" <td>Gym</td> ");
                  ps=con.prepareStatement("Select * from gym_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>ddd" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
           
           
           
           
           
           
           
            out.println(" </tr> ");
    
                  
             //basketball------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>03.</td> ");
            out.println(" <td>Basketball</td> ");
                  ps=con.prepareStatement("Select * from basketball_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
                  
        
           
           
           
           
            out.println(" </tr> ");
    
                  
             //badminton------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>04.</td> ");
            out.println(" <td>Badminton</td> ");
                  ps=con.prepareStatement("Select * from badminton_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>ddd" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
           
           
           
           
           
           
            out.println(" </tr> ");
    
                  
             //tabletennis------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>05.</td> ");
            out.println(" <td>Table Tennis</td> ");
                  ps=con.prepareStatement("Select * from table_tennis_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>ddd" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
           
           
           
           
           
           
            out.println(" </tr> ");
    
                  
             //Lawn Tennis------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>06.</td> ");
            out.println(" <td>Lawn Tennis</td> ");
                  ps=con.prepareStatement("Select * from lawn_tennis_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>ddd" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
           
           
           
           
           
           
           
            out.println(" </tr> ");
    
                  
             //pool------------------------------------------------------------------------ 
             out.println(" <tr> ");
            out.println(" <td>07.</td> ");
            out.println(" <td>Pool</td> ");
                  ps=con.prepareStatement("Select * from pool_sport_details where user_roll_number=?");
           ps.setInt(1, rn);
           rs=ps.executeQuery();
           if(rs.next())
           {
//              roll_number=rs.getInt(2);
                slot_serial=rs.getInt(3);
                //out.println("Sport Name:Gymming\n\t");
                ps1=con.prepareStatement("Select * from slot_details where slot_serial=?");
                ps1.setInt(1, slot_serial);
                rs1=ps1.executeQuery();
                    
                             
                if(rs1.next())
                {
                            //    out.println("\n      Timings:"+rs1.getString(5));
                                 
                    out.println(" <td>ddd" + rs1.getString(5) + " </td> ");
                          
                }
                            
                           
            }
            else
            {
                out.println("<td> Not Registered </td>");
            }
           
           
                  
                  
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
           




        









            
        %>
       
       </tr>
</table>
       
       
       
       
       
       
       
       
       
       
       <%
       }  
       else{  
           response.sendRedirect("index3.jsp");
           out.println("Please login first");
          
}   

}
catch(NullPointerException e)
{
   //e.printStackTrace();
response.sendRedirect("login.view");
}

           %>
        
    </body>
</html>
