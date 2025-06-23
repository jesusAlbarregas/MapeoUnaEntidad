package es.albarregas.models;

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author jesus
 */
public class Util {
    
    public static Boolean isCamposVavios(Enumeration<String> campos, HttpServletRequest request, String opcional) {
        Boolean vacio = false;
        while(campos.hasMoreElements() && !vacio) {
            String nombre = campos.nextElement();
            if(!nombre.equalsIgnoreCase(opcional) && request.getParameter(nombre).length() == 0) {
                vacio = Boolean.TRUE;
            }
        } 
        return vacio;
    }
    
}
