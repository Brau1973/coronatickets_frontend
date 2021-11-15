/**
 * ControladorPaquetePublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorPaquetePublish extends java.rmi.Remote {
    public void agregarEspectaculo(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.DtPaqueteEspectaculo[] obtenerPaquetes() throws java.rmi.RemoteException;
    public boolean existePaquete(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaPaquete(publicadores.PaqueteEspectaculos arg0) throws java.rmi.RemoteException;
}
