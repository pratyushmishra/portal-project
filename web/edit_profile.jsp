<%-- 
    Document   : edit_profile
    Created on : 21 Feb, 2016, 10:57:23 PM
    Author     : 1305366
--%>

<%@page import="model.user_model"%>
<%@page import="sun.security.util.BigInt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.sqlconn"  %>


<%
    //for session
    try
    {
        String session_user_roll_number=(String)session.getAttribute("session_user_roll_number");  
        if(session_user_roll_number!=null){  
      
%>

<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="edit_profile_style.css">
    </head>
    <body>
        
         <%@ include file="header.jsp" %>
         
            <%
                //for retriving roll no from session
                String user_roll_number=(String)session.getAttribute("session_user_roll_number"); 
                
         //converting to int & sending to class 
           int rollnumber=Integer.parseInt(user_roll_number);
           
           user_model user=new user_model();
           user_model userAll=null;
           //getting all data from class
           userAll=user.get_all(rollnumber);
           

           
    
             %>
             
            
         <link rel="stylesheet" href="edit_profile_style.css">
             <form action="edit_profile.do" method="post" >
                 <div id="container">    
             <table>
             <tr>
                 <td>Roll No.</td>
                 <td><input title="This can't be edited." type="text" id="roll_box" name="roll_numb" value="<%=session_user_roll_number%>" disabled></td>
             </tr>        
             <tr>
                 <td>Name</td>
                 <td><input type="text" name="name" value="<%=userAll.user_name%>"></td>
             </tr>
             
             <tr>
                 <td>Email Id</td>
                 <td><input type="email" name="emailid" value="<%=userAll.user_email_id%>" id="email"></td>
             </tr>
             <tr>
                 <td>Contact No.</td>
                 <td><input type="text" name="contact_number" value="<%=userAll.user_contact_number%>"></td>
             </tr>
             <tr>
                 <td>Password</td>
                 <td><input type="password" name="password" value="<%=userAll.user_password%>"></td>
             </tr>
             
             <tr>
                 <td><input type="submit" value="Save"></td>
                 <td><input type="reset" value="Reset Changes"></td>
             </tr>
             
             </table>
                              </div>

         </form>
         
         
    </body>
</html>
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