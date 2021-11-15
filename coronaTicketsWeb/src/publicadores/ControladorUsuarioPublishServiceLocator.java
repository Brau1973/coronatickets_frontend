/**
 * ControladorUsuarioPublishServiceLocator.java
 *
 * This file was auto-generated from WSDL by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class ControladorUsuarioPublishServiceLocator extends org.apache.axis.client.Service implements publicadores.ControladorUsuarioPublishService {

	public ControladorUsuarioPublishServiceLocator() {
	}

	public ControladorUsuarioPublishServiceLocator(org.apache.axis.EngineConfiguration config) {
		super(config);
	}

	public ControladorUsuarioPublishServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
		super(wsdlLoc, sName);
	}

	// Use to get a proxy class for ControladorUsuarioPublishPort
	private java.lang.String ControladorUsuarioPublishPort_address = "http://127.0.0.1:1942/controladorUsuario";

	public java.lang.String getControladorUsuarioPublishPortAddress() {
		return ControladorUsuarioPublishPort_address;
	}

	// The WSDD service name defaults to the port name.
	private java.lang.String ControladorUsuarioPublishPortWSDDServiceName = "ControladorUsuarioPublishPort";

	public java.lang.String getControladorUsuarioPublishPortWSDDServiceName() {
		return ControladorUsuarioPublishPortWSDDServiceName;
	}

	public void setControladorUsuarioPublishPortWSDDServiceName(java.lang.String name) {
		ControladorUsuarioPublishPortWSDDServiceName = name;
	}

	public publicadores.ControladorUsuarioPublish getControladorUsuarioPublishPort() throws javax.xml.rpc.ServiceException {
		java.net.URL endpoint;
		try {
			endpoint = new java.net.URL(ControladorUsuarioPublishPort_address);
		} catch (java.net.MalformedURLException e) {
			throw new javax.xml.rpc.ServiceException(e);
		}
		return getControladorUsuarioPublishPort(endpoint);
	}

	public publicadores.ControladorUsuarioPublish getControladorUsuarioPublishPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
		try {
			publicadores.ControladorUsuarioPublishPortBindingStub _stub = new publicadores.ControladorUsuarioPublishPortBindingStub(portAddress, this);
			_stub.setPortName(getControladorUsuarioPublishPortWSDDServiceName());
			return _stub;
		} catch (org.apache.axis.AxisFault e) {
			return null;
		}
	}

	public void setControladorUsuarioPublishPortEndpointAddress(java.lang.String address) {
		ControladorUsuarioPublishPort_address = address;
	}

	/**
	 * For the given interface, get the stub implementation. If this service has no port for the given interface, then ServiceException is thrown.
	 */
	public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
		try {
			if (publicadores.ControladorUsuarioPublish.class.isAssignableFrom(serviceEndpointInterface)) {
				publicadores.ControladorUsuarioPublishPortBindingStub _stub = new publicadores.ControladorUsuarioPublishPortBindingStub(new java.net.URL(ControladorUsuarioPublishPort_address), this);
				_stub.setPortName(getControladorUsuarioPublishPortWSDDServiceName());
				return _stub;
			}
		} catch (java.lang.Throwable t) {
			throw new javax.xml.rpc.ServiceException(t);
		}
		throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
	}

	/**
	 * For the given interface, get the stub implementation. If this service has no port for the given interface, then ServiceException is thrown.
	 */
	public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
		if (portName == null) {
			return getPort(serviceEndpointInterface);
		}
		java.lang.String inputPortName = portName.getLocalPart();
		if ("ControladorUsuarioPublishPort".equals(inputPortName)) {
			return getControladorUsuarioPublishPort();
		} else {
			java.rmi.Remote _stub = getPort(serviceEndpointInterface);
			((org.apache.axis.client.Stub) _stub).setPortName(portName);
			return _stub;
		}
	}

	public javax.xml.namespace.QName getServiceName() {
		return new javax.xml.namespace.QName("http://publicadores/", "ControladorUsuarioPublishService");
	}

	private java.util.HashSet ports = null;

	public java.util.Iterator getPorts() {
		if (ports == null) {
			ports = new java.util.HashSet();
			ports.add(new javax.xml.namespace.QName("http://publicadores/", "ControladorUsuarioPublishPort"));
		}
		return ports.iterator();
	}

	/**
	 * Set the endpoint address for the specified port name.
	 */
	public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {

		if ("ControladorUsuarioPublishPort".equals(portName)) {
			setControladorUsuarioPublishPortEndpointAddress(address);
		} else { // Unknown Port Name
			throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
		}
	}

	/**
	 * Set the endpoint address for the specified port name.
	 */
	public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
		setEndpointAddress(portName.getLocalPart(), address);
	}

}
