package publicadores;

public class ControladorPaquetePublishProxy implements publicadores.ControladorPaquetePublish {
  private String _endpoint = null;
  private publicadores.ControladorPaquetePublish controladorPaquetePublish = null;
  
  public ControladorPaquetePublishProxy() {
    _initControladorPaquetePublishProxy();
  }
  
  public ControladorPaquetePublishProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorPaquetePublishProxy();
  }
  
  private void _initControladorPaquetePublishProxy() {
    try {
      controladorPaquetePublish = (new publicadores.ControladorPaquetePublishServiceLocator()).getControladorPaquetePublishPort();
      if (controladorPaquetePublish != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorPaquetePublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorPaquetePublish)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorPaquetePublish != null)
      ((javax.xml.rpc.Stub)controladorPaquetePublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorPaquetePublish getControladorPaquetePublish() {
    if (controladorPaquetePublish == null)
      _initControladorPaquetePublishProxy();
    return controladorPaquetePublish;
  }
  
  public void agregarEspectaculo(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPaquetePublish == null)
      _initControladorPaquetePublishProxy();
    controladorPaquetePublish.agregarEspectaculo(arg0, arg1);
  }
  
  public publicadores.DtPaqueteEspectaculo[] obtenerPaquetes() throws java.rmi.RemoteException{
    if (controladorPaquetePublish == null)
      _initControladorPaquetePublishProxy();
    return controladorPaquetePublish.obtenerPaquetes();
  }
  
  public boolean existePaquete(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPaquetePublish == null)
      _initControladorPaquetePublishProxy();
    return controladorPaquetePublish.existePaquete(arg0);
  }
  
  public void altaPaquete(publicadores.PaqueteEspectaculos arg0) throws java.rmi.RemoteException{
    if (controladorPaquetePublish == null)
      _initControladorPaquetePublishProxy();
    controladorPaquetePublish.altaPaquete(arg0);
  }
  
  
}