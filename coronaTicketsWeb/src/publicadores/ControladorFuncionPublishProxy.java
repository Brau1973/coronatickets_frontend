package publicadores;

public class ControladorFuncionPublishProxy implements publicadores.ControladorFuncionPublish {
  private String _endpoint = null;
  private publicadores.ControladorFuncionPublish controladorFuncionPublish = null;
  
  public ControladorFuncionPublishProxy() {
    _initControladorFuncionPublishProxy();
  }
  
  public ControladorFuncionPublishProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorFuncionPublishProxy();
  }
  
  private void _initControladorFuncionPublishProxy() {
    try {
      controladorFuncionPublish = (new publicadores.ControladorFuncionPublishServiceLocator()).getControladorFuncionPublishPort();
      if (controladorFuncionPublish != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorFuncionPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorFuncionPublish)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorFuncionPublish != null)
      ((javax.xml.rpc.Stub)controladorFuncionPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorFuncionPublish getControladorFuncionPublish() {
    if (controladorFuncionPublish == null)
      _initControladorFuncionPublishProxy();
    return controladorFuncionPublish;
  }
  
  public java.lang.String[] getFuncionesVigentesRegistradasPorEspectador(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorFuncionPublish == null)
      _initControladorFuncionPublishProxy();
    return controladorFuncionPublish.getFuncionesVigentesRegistradasPorEspectador(arg0);
  }
  
  public void altaFuncion(publicadores.DtFuncion arg0, java.lang.String arg1, byte[] arg2) throws java.rmi.RemoteException{
    if (controladorFuncionPublish == null)
      _initControladorFuncionPublishProxy();
    controladorFuncionPublish.altaFuncion(arg0, arg1, arg2);
  }
  
  public publicadores.DtFuncion[] listarFunciones(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorFuncionPublish == null)
      _initControladorFuncionPublishProxy();
    return controladorFuncionPublish.listarFunciones(arg0);
  }
  
  public publicadores.Funcion obtenerFuncion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorFuncionPublish == null)
      _initControladorFuncionPublishProxy();
    return controladorFuncionPublish.obtenerFuncion(arg0);
  }
  
  
}