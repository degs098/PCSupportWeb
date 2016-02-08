
package com.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import oracle.jdbc.driver.OracleDriver;

/**
 *
 * @author samsung
 */
public class Conexion {      

    public Connection conexion;       
           
    private String USER = "PC_Support";
    private String PASSWORD = "123";
    private String HOST = "localhost";
    private String PORT = "1521";
    private String SID =  "xe";    
    
    public void conectarDB() throws Exception{
        try{
            OracleDriver oracleDriver = new OracleDriver();
            DriverManager.registerDriver(oracleDriver);
            DriverManager.getConnection("jdbc:oracle:thin:@" + HOST + ":" + PORT + ":" + SID, USER, PASSWORD);            
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void cerrarDB() throws Exception{
        if(conexion != null){
            if(!conexion.isClosed()){
                conexion.close();
            }
        }
    }
    
    public static void main(String[] args){
        Conexion con = new Conexion();
        try {
            con.conectarDB();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }    
    
}
