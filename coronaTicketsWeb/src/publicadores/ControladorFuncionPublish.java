/**
 * ControladorFuncionPublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorFuncionPublish extends java.rmi.Remote {
    public java.lang.String[] getFuncionesVigentesRegistradasPorEspectador(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtFuncion[] listarFunciones(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaFuncion(publicadores.DtFuncion arg0, java.lang.String arg1, byte[] arg2) throws java.rmi.RemoteException, publicadores.FuncionYaRegistradaEnEspectaculoExcepcion;
    public publicadores.Funcion obtenerFuncion(java.lang.String arg0) throws java.rmi.RemoteException;
}
