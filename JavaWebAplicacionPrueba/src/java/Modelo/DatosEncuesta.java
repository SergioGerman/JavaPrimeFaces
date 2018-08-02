/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

public class DatosEncuesta {
    
    private String nombreCompleto;
    private String[] progLeng;

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }
    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setProgLeng(String[] progLeng) {
        this.progLeng = progLeng;
    }

    public String[] getProgLeng() {
        return progLeng;
    }


    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
