package com.project.dao;

import com.project.database.Conexion;
import com.project.interfaces.DAOUser;
import com.project.objects.Usuario;
import java.sql.PreparedStatement;
import java.util.List;

/**
 *
 * @author samsung
 */
public class DAOUserImpl extends Conexion implements DAOUser{

    @Override
    public void guardarUsuario(Usuario user) throws Exception {
        
        try{
            this.conectarDB();
            PreparedStatement st = this.conexion.prepareStatement("INSERT INTO TBLUSUARIO (USUARIO,NOMBRE,CLAVE,ESTADO,PERFIL) VALUES (?,?,?,?,?)");
            st.setString(1, user.getUserName());
            st.setString(2, user.getNombre());
            st.setString(3, user.getClave());
            st.setString(4, user.getEstado());
            st.setString(5, user.getPerfil());
            st.executeQuery();
            System.out.println("Guardado!");
        }catch(Exception e){
            System.out.println(e);
        }finally{
            this.cerrarDB();
        }
    }

    @Override
    public void editarUsuario(Usuario user) throws Exception {
        
    }

    @Override
    public void eliminarUsuario(Usuario user) throws Exception {
        
    }

    @Override
    public List<Usuario> buscarUsuario(Usuario user) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
