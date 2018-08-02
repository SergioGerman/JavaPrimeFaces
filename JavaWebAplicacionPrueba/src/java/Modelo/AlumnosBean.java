/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import javax.ejb.Stateless;

public class AlumnosBean{
   private String nombre;
   private String apellidos;
   
    public AlumnosBean () {
    
    }
    public AlumnosBean(String nombre, String apellidos){
        
        setNombre(nombre);
        setApellidos(apellidos);
    }
   
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }


}