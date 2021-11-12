package publicadores;

public class ControladorPlataformaPublishProxy implements publicadores.ControladorPlataformaPublish {
  private String _endpoint = null;
  private publicadores.ControladorPlataformaPublish controladorPlataformaPublish = null;
  
  public ControladorPlataformaPublishProxy() {
    _initControladorPlataformaPublishProxy();
  }
  
  public ControladorPlataformaPublishProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorPlataformaPublishProxy();
  }
  
  private void _initControladorPlataformaPublishProxy() {
    try {
      controladorPlataformaPublish = (new publicadores.ControladorPlataformaPublishServiceLocator()).getControladorPlataformaPublishPort();
      if (controladorPlataformaPublish != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorPlataformaPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorPlataformaPublish)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorPlataformaPublish != null)
      ((javax.xml.rpc.Stub)controladorPlataformaPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorPlataformaPublish getControladorPlataformaPublish() {
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    return controladorPlataformaPublish;
  }
  
  public java.lang.String[] listarPlataformasStr() throws java.rmi.RemoteException{
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    return controladorPlataformaPublish.listarPlataformasStr();
  }
  
  public publicadores.DtPlataforma[] listarPlataformas() throws java.rmi.RemoteException{
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    return controladorPlataformaPublish.listarPlataformas();
  }
  
  public void altaPlataforma(publicadores.DtPlataforma arg0) throws java.rmi.RemoteException, publicadores.PlataformaRepetidaExcepcion{
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    controladorPlataformaPublish.altaPlataforma(arg0);
  }
  
  public publicadores.Plataforma buscarPlataforma(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    return controladorPlataformaPublish.buscarPlataforma(arg0);
  }
  
  public publicadores.DtPlataforma mapEntityToDt(publicadores.Plataforma arg0) throws java.rmi.RemoteException{
    if (controladorPlataformaPublish == null)
      _initControladorPlataformaPublishProxy();
    return controladorPlataformaPublish.mapEntityToDt(arg0);
  }
  
  
}