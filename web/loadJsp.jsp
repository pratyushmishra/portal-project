<%-- 
    Document   : loadJsp
    Created on : 17 Jan, 2016, 4:22:14 AM
    Author     : 1305016
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <%
        Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            boolean rf=false;
            // String username= request.getParameter("regName");
             //String password=request.getParameter("ragPass");
             
             //out.print(regPass);
             
             
            try{
                
                 Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/raghu","root","pratyush") ;
                Statement stmt=con.createStatement();
                rs=stmt.executeQuery("select * from userpass");  
               while(rs.next()){
                    out.println(rs.getString(1)+ "  &&  " + rs.getString(2));
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
       
       
       %>
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
