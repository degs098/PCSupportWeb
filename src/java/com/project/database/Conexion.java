
package com.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author samsung
 */
public class Conexion {

    protected Connection conexion;
    
    private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private final String USER = "PC_Support";
    private final String PASSWORD = "123";
    
    public void conectarDB() throws Exception{
        try{
            Connection conexion = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            Class.forName(JDBC_DRIVER);
            System.out.println("Hecho!");
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
    
}
