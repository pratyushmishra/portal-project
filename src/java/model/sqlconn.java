/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author 1305366
 */
public class sqlconn {
    Connection con =null;
    public Connection getconn(){
    try{
    
                 Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal_project","root","pratyush") ;

    }
    catch(Exception ex){
    System.out.println(ex);
    }
    return con;
    }
}
