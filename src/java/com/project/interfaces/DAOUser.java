
package com.project.interfaces;

import com.project.objects.Usuario;
import java.util.List;

/**
 *
 * @author samsung
 */
public interface DAOUser {
    
    public void guardarUsuario(Usuario user) throws Exception;
    public void editarUsuario (Usuario user) throws Exception;
    public void eliminarUsuario (Usuario user) throws Exception;
    public List<Usuario> buscarUsuario (Usuario user) throws Exception;
}
