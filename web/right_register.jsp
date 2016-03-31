<%-- 
    Document   : body
    Created on : 14 Jun, 2015, 1:31:55 PM
    Author     : 1305325
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logging Page</title>
    </head>
    <body>
        <link href="<c:url value="indexstyle.css"/>" rel="stylesheet">
        <div id="head">
            <h1>Sign Up</h1>
        
            
            
            
    <h3>It's free and always will be</h3>
    
    </div>
    
        <div id="form" >
    <form action="saveJsp.jsp">
        <center>
             <link href="<c:url value="indexStyle.css" />" rel="stylesheet">
        <div class="name"><input type="text"  name="userName" placeholder="Name" id="name"/> <br></div>
        <div>
            <input type="text"  name="userRollNumber" placeholder="Roll Number"/> <br>
        </div>
        <div class="age">
            <input type="text" placeholder="Enter your age"><br>
        </div> 
        
                
        <div>
            <input type="text"  name="userBranch" placeholder="Branch"/> <br>
        </div>
        <div>
            <input type="text"  name="userEmail" placeholder="Email Id"/> <br>
        </div>
        <div>
            <input type="text"  name="userContact" placeholder="Contact Number"/> <br>
        </div>
        <div>
            <input type="password" name="userPass" placeholder="Password"/><br>
        </div>
        <div>
            <input type="password" name="userRePass" placeholder="RePassword"/><br>
        </div>
         <div class="sex">
            <input type="radio" name="userSex" value="1" id="m"> Male<input type="radio" name="userSex" value="2" id="f"> Female
        </div>   
        <div>
            <input type="submit" name="Done" value="REGISTER" class="button"/>
        </div>
        </center>
    </form>
    </div>
    </body>
</html>
