<%-- 
    Document   : headerraghu
    Created on : 19 Feb, 2016, 12:01:28 AM
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
    <li class="active"><a href="home.jsp">Home</a></li>
    <li><a href="register_sport.jsp">Sports Registration</a></li>
    <li><a href="edit_profile.jsp">Edit Profile</a></li>
    <li><a href="generate_bill.jsp">Generate Bill</a></li>
    <li><a href="logout.do">Logout</a></li>
  </ul>
</div>
        </div>
    </body>
</html>
