/**
 * EspectaculoRepetidoExcepcion.java
 *
 * This file was auto-generated from WSDL by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class EspectaculoRepetidoExcepcion extends org.apache.axis.AxisFault {
	public java.lang.String fault;

	public java.lang.String getFault() {
		return this.fault;
	}

	public EspectaculoRepetidoExcepcion() {
	}

	public EspectaculoRepetidoExcepcion(java.lang.Exception target) {
		super(target);
	}

	public EspectaculoRepetidoExcepcion(java.lang.String message, java.lang.Throwable t) {
		super(message, t);
	}

	public EspectaculoRepetidoExcepcion(java.lang.String fault) {
		this.fault = fault;
	}

	/**
	 * Writes the exception data to the faultDetails
	 */
	public void writeDetails(javax.xml.namespace.QName qname, org.apache.axis.encoding.SerializationContext context) throws java.io.IOException {
		context.serialize(qname, null, fault);
	}
}
