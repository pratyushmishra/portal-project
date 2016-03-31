/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author 1305366
 */
public class user_model extends RegisterService{
    
    //public int id=0;
    public int user_roll_number=0;
    public String user_name="";
    public String user_email_id="";
    public String user_contact_number="";
    public int user_sex=0;
 //   public int user_status=0;
    public String user_password="";
    
    private String query=null;
    
  
    
    public user_model(int rollnumber,String username,String useremailid, String usercontactnumber, int usersex, String password)
    {
        this.user_roll_number=rollnumber;
        this.user_name=username;
        this.user_email_id=useremailid;
        this.user_contact_number=usercontactnumber;
        this.user_sex=usersex;
        this.user_password=password;
    }
    
    public user_model(String rollnumber,String username,String useremailid, String usercontactnumber, int usersex, String password)
    {
        this.user_roll_number=Integer.parseInt(rollnumber);
        this.user_name=username;
        this.user_email_id=useremailid;
        this.user_contact_number=usercontactnumber;
        this.user_sex=usersex;
        this.user_password=password;
    }

    public user_model() 
    {
        
        
    }
    
    
    ResultSet do_connection(String query)
    {
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try
        {
            sqlconn c=new sqlconn();
            con=c.getconn();
            ps=con.prepareStatement(query);
            rs=ps.executeQuery();
            
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    
    public int get_sex(int user_roll_number)
    {
        query="select user_sex from user_details where user_roll_number=" + user_roll_number;
        ResultSet rs=do_connection(query);
        try{
            
        
        if(rs.next())
            {
                 user_sex=rs.getInt(1);
                 //System.out.println(id);
                  return user_sex;
            
        }
        }
        catch(Exception e)
        {
            
        }
        return 0;
       
    }
    
    
    public user_model get_all(int user_roll_number)
    {
        user_model userAll=new user_model();
        
        query="Select * from user_details where user_roll_number=" + user_roll_number;
        
        ResultSet rs=do_connection(query);
        
        try {
            if(rs.next()){
                    //userAll.user_roll_number=rs.getInt(2);
                    userAll.user_name=rs.getString(3);
                    userAll.user_email_id=rs.getString(4);
                    userAll.user_contact_number=rs.getString(5);
                    userAll.user_password=rs.getString(6);
            }
        } catch (SQLException ex) {
            Logger.getLogger(user_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return userAll;
    }
    
   
    
}
