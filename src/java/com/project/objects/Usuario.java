package com.project.objects;

/**
 *
 * @author samsung
 */
public class Usuario {

    public String userName;
    public String nombre;
    public String clave;
    public String estado;
    public String perfil;
   
    public Usuario (String userName, String nombre, String clave, String estado, String perfil){
        this.userName = userName;
        this.nombre = nombre;
        this.clave = clave;
        this.estado = estado;
        this.perfil = perfil;
    }   

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }      
}
