<%-- 
    Document   : index
    Created on : 16 Jan, 2016, 11:58:51 PM
    Author     : 1305016
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="w3.css">
        <link rel="stylesheet" href="register_sport_style.css">
        <link rel="stylesheet" href="indexStyle.css">
        
        
        
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>Index page</title>
          

          
<style type="text/css">
      body{background: #ccc;margin: 44px 0px 0px 0px;}
      div#topdiv{
          position: fixed;
          top: 0px;
          left: 0px;
          width: 100%;
          color: #ccc;
          background: #333;
          padding: 8px;
          
          
      }
      
  
  
      
    
    
    
    
    
    
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:1000px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
</head>
<body>
 <link href="<c:url value=indexStyle.css/>" rel="stylesheet">


 <div id="header" style="height:50%" >
 
     
     
          <img src="sports.jpg" width="50" height="100">
       
        <div class="container" style="margin: 20px">
 
                <ul class="nav nav-pills" style="float: left">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="register_sport.jsp">Sports registration</a></li>
    <li><a href="#">Edit profile</a></li>
    <li><a href="#">Menu 3</a></li>
  </ul>
</div>
       
     
     
     
     
     
     
     
     
     
 </div>
 
 
 
<div id="section" >
 <form action="saveJsp.jsp">
        <center>
         
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
 
 
 
 
<div id="footer">
Copyright © W3Schools.com
</div>

</body>
</html>