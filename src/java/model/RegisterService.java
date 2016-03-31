/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author 1305366
 */
public class RegisterService{
    
    
    public void register(user_model user)
    {
         int user_status=1;
        
        Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            
         try{
                
                 sqlconn c =new sqlconn();
                  con=c.getconn();
              ps=con.prepareStatement("insert into user_details (user_roll_number,user_name,user_email_id,user_contact_number,user_password,user_sex,user_status) values " + "(\"" + user.user_roll_number + "\",\"" + user.user_name + "\",\"" + user.user_email_id + "\",\"" +  user.user_contact_number + "\",\"" + user.user_password  + "\",\"" + user.user_sex + "\",\"" + user_status + "\")");
               ps.execute();
               
           
           
             
            } 
            catch(Exception ex){
            
            }
        finally{
            try{
            con.close();
            ps.close();
            rs.close();
            }catch(Exception ex){
            }
            }
        
    }
    
}
