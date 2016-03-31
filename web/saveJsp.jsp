<%-- 
    Document   : saveJsp
    Created on : 16 Jan, 2016, 11:41:35 PM
    Author     : 1305016
--%>

<%@page import="model.user_model"%>
<%@page import="model.RegisterService"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page import="model.sqlconn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
      
        <h1>file saved...</h1>
        
        
        <%
        Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            
            //boolean rf=false;
            
             String user_name= request.getParameter("userName");
             String user_password=request.getParameter("userPass");
              String user_roll_number=request.getParameter("userRollNumber");
              String user_email_id=request.getParameter("userEmail");
           String user_contact_number=  request.getParameter("userContact");
          // u  ser_contact_number = new BigInteger(contact);
              int user_sex=Integer.parseInt(request.getParameter("userSex"));
              
             
              user_model user= new user_model(user_roll_number, user_name, user_email_id, user_contact_number, user_sex, user_password);
              
              user.register(user);
           
       %>
       
        
        
    </body>
</html>
