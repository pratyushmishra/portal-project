<%-- 
    Document   : template
    Created on : 14 Jun, 2015, 1:31:15 PM
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
    <body >
        <table width="100%"  border="0" >
            <tr>
                <td width="100%"colspan ="2"  >
                    <tiles:insert attribute="header"/>
                </td>
                 
            </tr>
             
            <tr>
                <td width="60%">
                    <tiles:insert attribute="left"/>
              
                </td>
                <td width="70%" >
                <tiles:insert attribute="right_register"/>
                </td>
            </tr>
            <tr>
                <td width="100%" height="10" colspan="2">
                    <tiles:insert attribute="bottom"/>
                </td>
            </tr>
        </table>
        
        
    </body>
</html>
