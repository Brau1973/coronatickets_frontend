/**
 * ControladorEspectaculoPublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorEspectaculoPublish extends java.rmi.Remote {
    public publicadores.DtEspectaculo[] listarEspectaculos(java.lang.String arg0) throws java.rmi.RemoteException;
    public java.lang.String[] obtenerEspectaculosArtista(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.Espectaculo obtenerEspectaculo(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaEspectaculo(publicadores.DtEspectaculo arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.Espectaculo[] obtenerEspectaculo2(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtEspectaculo[] obtenerAllDtEspectaculos(java.lang.String arg0) throws java.rmi.RemoteException;
}
