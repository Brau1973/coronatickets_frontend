package publicadores;

public class ControladorEspectaculoPublishProxy implements publicadores.ControladorEspectaculoPublish {
  private String _endpoint = null;
  private publicadores.ControladorEspectaculoPublish controladorEspectaculoPublish = null;
  
  public ControladorEspectaculoPublishProxy() {
    _initControladorEspectaculoPublishProxy();
  }
  
  public ControladorEspectaculoPublishProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorEspectaculoPublishProxy();
  }
  
  private void _initControladorEspectaculoPublishProxy() {
    try {
      controladorEspectaculoPublish = (new publicadores.ControladorEspectaculoPublishServiceLocator()).getControladorEspectaculoPublishPort();
      if (controladorEspectaculoPublish != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorEspectaculoPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorEspectaculoPublish)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorEspectaculoPublish != null)
      ((javax.xml.rpc.Stub)controladorEspectaculoPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorEspectaculoPublish getControladorEspectaculoPublish() {
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish;
  }
  
  public java.lang.String[] obtenerEspectaculosArtista(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerEspectaculosArtista(arg0);
  }
  
  public void altaEspectaculo(publicadores.DtEspectaculo arg0, java.lang.String arg1) throws java.rmi.RemoteException, publicadores.EspectaculoRepetidoExcepcion{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    controladorEspectaculoPublish.altaEspectaculo(arg0, arg1);
  }
  
  public publicadores.DtEspectaculo[] listarEspectaculos(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.listarEspectaculos(arg0);
  }
  
  public publicadores.Espectaculo obtenerEspectaculo(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerEspectaculo(arg0);
  }
  
  public publicadores.DtFuncion[] obtenerEspectaculoFunciones(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerEspectaculoFunciones(arg0);
  }
  
  public publicadores.DtPaqueteEspectaculo[] obtenerEspectaculoPaquetes(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerEspectaculoPaquetes(arg0);
  }
  
  public publicadores.Espectaculo[] obtenerEspectaculo2(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerEspectaculo2(arg0);
  }
  
  public publicadores.DtEspectaculo[] obtenerAllDtEspectaculos(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorEspectaculoPublish == null)
      _initControladorEspectaculoPublishProxy();
    return controladorEspectaculoPublish.obtenerAllDtEspectaculos(arg0);
  }
  
  
}