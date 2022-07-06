/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connection;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell
 */
public class DBconnect {
    public static Connection getCon(){
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/javatraning2","root", "rootwdp");
           return con;
       } catch(Exception ee){
           System.out.println(ee); 
       }
       return null;
    }
}
