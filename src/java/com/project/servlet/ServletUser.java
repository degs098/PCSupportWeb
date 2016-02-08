/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.servlet;

import com.project.dao.DAOUserImpl;
import com.project.interfaces.DAOUser;
import com.project.objects.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author samsung
 */
@WebServlet("/ServletUser")
public class ServletUser extends HttpServlet{
    
    @Override
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        response.setContentType("text/html;charset=UTF-8");
        
        String userName = request.getParameter("userName");
        String nombre = request.getParameter("nombre");
        String clave = request.getParameter("clave");
        String perfil = request.getParameter("perfil");
        String estado = request.getParameter("estado");    
        
        String message = "dasd";
        String action = (String) request.getParameter("action");                
        
        if(userName.equals("")){            
            request.setAttribute("message", message);
            request.getRequestDispatcher("./frmusuarios.jsp").forward(request, response);
        }else{
            if("guardar".equals(action)){                                       
                Usuario user = new Usuario(userName, nombre, clave, perfil, estado);                                   
                try{
                    DAOUser dao = new DAOUserImpl();
                    dao.guardarUsuario(user);
                    System.out.println("Hecho!");
                }catch(Exception e){
                    System.out.println(e);
                }
            }
        }        
        request.getRequestDispatcher("./frmusuarios.jsp").forward(request, response);                
    }
}
