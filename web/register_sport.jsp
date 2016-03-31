<%-- 
    Document   : register_sport
    Created on : 14 Feb, 2016, 1:38:02 AM
    Author     : 1305016
--%>




<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.user_model"%>
<%@page import="model.sqlconn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%-- w3.css link --%>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="w3.css">
        <link rel="stylesheet" href="register_sport_style.css">
         
</head>
    
    <body>
        
        <%-- for session n retrieving roll no & gender--%>
        
<%
    //getting roll n sex from session
    int sessionRoll=Integer.parseInt((String)session.getAttribute("session_user_roll_number"));
    int userSex=Integer.parseInt(String.valueOf(session.getAttribute("session_user_sex")));//converting into string& then to int
    
    
    out.println(sessionRoll);
    out.println(userSex);
    
    
        
%>        
        
        
        
        
        
          <%@ include file="header.jsp" %>  
    <center>
        <div class="body">    
                            <%-- sport 1 - Swimming --%>

            <div class="w3-card-4" style="width:50%;">

                <header class="w3-container w3-blue">
                  <h4>Swimming</h4>
                </header>

                <div class="w3-container" style="margin-bottom: 10px; ">

                    <form action="payment_sport.do" method="post" >
                        <div id="swimming_slot" class="floating-slot" >
                            Select Days : 
                            <input type="radio" name="day_slot" value="MWF"> M W F
                            <input type="radio" name="day_slot" value="TTS"> T T S
                        </div>


                            <div style="clear:left;">
                                
                                <div name="morning"  class="floating-box">
                                    
                                    MORNING<br>
                                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                                </div>



                                <div name="evening"  class="floating-box">
                                    EVENING<BR>
                                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>
                                </div>


                                <div class="register_button">
                                     
                                    <input type="hidden" value="sw1" name="button">
                                    <input type="submit" value="Register" name="swimming" >
                                </div>
                            </div>
                    </form>
                </div>
            </div>


                            
                            
                            
                            

                <%-- sport 2 - gym--%>

                            <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Gym</h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
            
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="gy5" name="button">
                     <input type="submit" value="Register" name="gym">
                </div>


                            </form>
                        </div>

                            </div>      
               
                
                

                            
                            
                            
                            

                <%-- sport 3 -basketball --%>

                <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Basketball</h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
         
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="as3" name="button">
                     <input type="submit" value="Register" name="basketball">
                </div>



                        </div>
                            </form>
                        </div>
                
                
                
                
                
                
                <%-- sport 4 - badminton --%>

                <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Badminton </h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
         
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="bd2" name="button">
                     <input type="submit" value="Register" name="badminton">
                </div>



                        </div>
                            </form>
                        </div>
                
                
                
                
                
                
                   <%-- sport 5 - Table Tennis --%>

                <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Table Tennis</h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
         
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="tt6" name="button">
                     <input type="submit" value="Register" name="tabletennis">
                </div>



                        </div>
                            </form>
                        </div>
                
                
                
                
                 <%-- sport 6 - Lawn Tennis --%>

                <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Lawn Tennis</h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
         
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="lw4" name="button">
                     <input type="submit" value="Register" name="lawntennis">
                </div>



                        </div>
                            </form>
                        </div>
           
                 
                 
                 
                 
                 
                 <%-- sport 7 - Pool --%>

                <div class="w3-card-4" style="width:50%;">

            <header class="w3-container w3-blue">
            <h4>Pool</h4>
            </header>

            <div class="w3-container" style="margin-bottom: 10px;">

            <form action="payment_sport.do" method="post">
         
                <div name="morning"  class="floating-box">
                    MORNING<br>
                    <input type="radio" name="time_slot" value="m1"> 6 - 7 AM <br>
                    <input type="radio" name="time_slot" value="m2"> 7 - 8 AM <br>
                    <input type="radio" name="time_slot" value="m3"> 8 - 9 AM <br>
                </div>



                <div name="evening"  class="floating-box">
                    EVENING<BR>
                    <input type="radio" name="time_slot" value="e1"> 6 - 7 PM <br>
                    <input type="radio" name="time_slot" value="e2"> 7 - 8 PM <br>


                </div>

                <div class="register_button">
                    <input type="hidden" value="po7" name="button">
                     <input type="submit" value="Register" name="pool">
                </div>



                        </div>
                            </form>
                        </div>
           
                   
                   
                   
                   
                
                
                
                
    </div>      
            
                
    </center>
        </body>
</html>
