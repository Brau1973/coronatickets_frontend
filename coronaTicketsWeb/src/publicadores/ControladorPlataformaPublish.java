/**
 * ControladorPlataformaPublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorPlataformaPublish extends java.rmi.Remote {
    public java.lang.String[] listarPlataformasStr() throws java.rmi.RemoteException;
    public publicadores.Plataforma buscarPlataforma(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtPlataforma[] listarPlataformas() throws java.rmi.RemoteException;
    public void altaPlataforma(publicadores.DtPlataforma arg0) throws java.rmi.RemoteException, publicadores.PlataformaRepetidaExcepcion;
    public publicadores.DtPlataforma mapEntityToDt(publicadores.Plataforma arg0) throws java.rmi.RemoteException;
}
