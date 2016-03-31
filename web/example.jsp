<%-- 
    Document   : example
    Created on : 14 Jun, 2015, 1:30:59 PM
    Author     : 1305325
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <tiles:insert page="/template.jsp" flush="true">
        <tiles:put name="header" value="/header.jsp"/>
       
         
        <tiles:put name="left" value="/left.jsp"/>
        <tiles:put name="right_register" value="/right_register.jsp"/>
        <tiles:put name="bottom" value="/bottom.jsp"/>
    </tiles:insert>
    </body>
</html>
