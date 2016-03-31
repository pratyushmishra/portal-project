<%-- 
    Document   : admin_remove_user
    Created on : 25 Feb, 2016, 11:49:47 PM
    Author     : 1305366
--%>

<%@page import="model.sqlconn"%>
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
            <%@ include file="admin_header.jsp" %>

        <h1>Admin remove user page</h1>
        
        <form action="remove_user.do">
            Enter Roll Number to remove user 
            <input type="text" name="remove_user_roll_number"/>
            <div id="nameForroll"></div>
            
            <%
                if(request.getParameter("remove_user_roll_number")!=null) 
{ 
                Connection con=null;
                PreparedStatement ps=null;
                ResultSet rs=null;
                
                int roll=Integer.parseInt(request.getParameter("remove_user_roll_number"));
                out.println(roll);
                /*
                try{
                    sqlconn c =new sqlconn();
                    con=c.getconn();
                    
                    ps=con.prepareStatement("Select user_name from user_details where user_roll_number=" + roll);
           
                    rs=ps.executeQuery();
                    
                    while(rs.next())
                    {
                       out.println(rs.getString(1));
                    
                
                    }
                }
                
                
                catch(Exception ex)
                {
                        out.println(ex);
                }*/
}
            %>
            
            <br>
            <input type="submit" value="Remove"/>
        </form>
        
    </body>
</html>
