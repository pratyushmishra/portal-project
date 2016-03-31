<%-- 
    Document   : admin_header
    Created on : 25 Feb, 2016, 11:44:15 PM
    Author     : 1305366
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
           <link rel="stylesheet" href="w3.css">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <%--<style type="text/css">
             div#topdiv{
                 position: fixed;
                 
             }
</style>--%>
         
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
        
        
        <title>JSP Page</title>
    </head>
    <body>
        
        <div id="topdiv">
        <div  style="float:left;">
          <img src="sports.jpg" height="50px" width="70px">
        </div>
       
        <div class="container" style="margin: 20px">
 
                <ul class="nav nav-pills" style="float: left">
    <li class="active"><a href="admin_home.jsp">Home</a></li>
    <li><a href="admin_validate_user.jsp">Validate User</a></li>
    <li><a href="admin_remove_user.jsp">Remove User</a></li>
    <li><a href="admin_view_sport_details.jsp">View Sports Details</a></li>
    <li><a href="logout.do">Logout</a></li>
  </ul>
</div>
        </div>
    </body>
</html>

