<%-- 
    Document   : admin_validate_user
    Created on : 25 Feb, 2016, 11:48:44 PM
    Author     : 1305366
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.sqlconn" %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ include file="admin_header.jsp" %>

       <%-- <h1>Admin Remove User Page</h1>--%>
       <table class="w3-table w3-striped w3-border" style="width:50%; margin-left: 50px; ">
<thead>
<tr class="w3-blue">
  <th>Roll Number</th>
  <th>Name</th>
  <th>Validate</th>
</tr>
</thead>
        
       
        <%
             Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           boolean rf=false;
           try{
           sqlconn c =new sqlconn();
           con=c.getconn();
           
           %>
          
           <form action=validate_user.do" method="post">
           <%
           ps=con.prepareStatement("Select * from user_details where user_status=1");
           //ps.setInt(1, rn);
           rs=ps.executeQuery();
           //ps.setString(1,request.getParameter("rn"));
           while(rs.next())
           {
              
                out.println(" <tr>");
                out.println(" <td> " + rs.getInt(2) +" </td> ");
                out.println(" <td> " + rs.getString(3) +" </td> ");
           
                 
                      %>
                        <td>
                             <button name=validateButton type=submit formaction="validate_user.do" value=<%=rs.getInt(2)%> ><i>✔</i></button><br>
                        </td>
                      <%
                out.println(" </tr>"); 
           }
           
         %>
           </form>
          <%
           } 
           
           catch(Exception ex){
     out.println(ex);
                        }
        %>
        
     
      </table>  
    </body>
</html>


