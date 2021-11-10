/**
 * ControladorUsuarioPublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorUsuarioPublish extends java.rmi.Remote {
    public publicadores.Usuario obtenerUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public java.lang.String[] listarNicknameArtistas() throws java.rmi.RemoteException;
    public java.lang.String[] listarNicknameEspectadores() throws java.rmi.RemoteException;
    public java.lang.String[] listarNicknameUsuarios() throws java.rmi.RemoteException;
    public void altaDtEspectador(publicadores.DtEspectador arg0) throws java.rmi.RemoteException;
    public publicadores.DtUsuario getLoginUsuarioMail(java.lang.String arg0) throws java.rmi.RemoteException;
    public void dejarDeSeguirUsuario(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public java.lang.String[] listarNicknameUsuariosSeguidos(java.lang.String arg0) throws java.rmi.RemoteException;
    public java.lang.String[] listarNicknameUsuariosNoSeguidos(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaDtArtista(publicadores.DtArtista arg0) throws java.rmi.RemoteException;
    public publicadores.DtUsuario getLoginUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtArtista getLoginArtista(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean emailRepetido(java.lang.String arg0) throws java.rmi.RemoteException;
    public void seguirUsuario(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.Artista obtenerArtista(java.lang.String arg0) throws java.rmi.RemoteException;
}
