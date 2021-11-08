/**
 * DtFuncion.java
 *
 * This file was auto-generated from WSDL by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtFuncion implements java.io.Serializable {
	private java.lang.String nombre;

	private java.util.Calendar fecha;

	private publicadores.Time horaInicio;

	private java.util.Calendar registro;

	private java.lang.String[] artistas;

	public DtFuncion() {
	}

	public DtFuncion(java.lang.String nombre, java.util.Calendar fecha, publicadores.Time horaInicio, java.util.Calendar registro, java.lang.String[] artistas) {
		this.nombre = nombre;
		this.fecha = fecha;
		this.horaInicio = horaInicio;
		this.registro = registro;
		this.artistas = artistas;
	}

	/**
	 * Gets the nombre value for this DtFuncion.
	 * 
	 * @return nombre
	 */
	public java.lang.String getNombre() {
		return nombre;
	}

	/**
	 * Sets the nombre value for this DtFuncion.
	 * 
	 * @param nombre
	 */
	public void setNombre(java.lang.String nombre) {
		this.nombre = nombre;
	}

	/**
	 * Gets the fecha value for this DtFuncion.
	 * 
	 * @return fecha
	 */
	public java.util.Calendar getFecha() {
		return fecha;
	}

	/**
	 * Sets the fecha value for this DtFuncion.
	 * 
	 * @param fecha
	 */
	public void setFecha(java.util.Calendar fecha) {
		this.fecha = fecha;
	}

	/**
	 * Gets the horaInicio value for this DtFuncion.
	 * 
	 * @return horaInicio
	 */
	public publicadores.Time getHoraInicio() {
		return horaInicio;
	}

	/**
	 * Sets the horaInicio value for this DtFuncion.
	 * 
	 * @param horaInicio
	 */
	public void setHoraInicio(publicadores.Time horaInicio) {
		this.horaInicio = horaInicio;
	}

	/**
	 * Gets the registro value for this DtFuncion.
	 * 
	 * @return registro
	 */
	public java.util.Calendar getRegistro() {
		return registro;
	}

	/**
	 * Sets the registro value for this DtFuncion.
	 * 
	 * @param registro
	 */
	public void setRegistro(java.util.Calendar registro) {
		this.registro = registro;
	}

	/**
	 * Gets the artistas value for this DtFuncion.
	 * 
	 * @return artistas
	 */
	public java.lang.String[] getArtistas() {
		return artistas;
	}

	/**
	 * Sets the artistas value for this DtFuncion.
	 * 
	 * @param artistas
	 */
	public void setArtistas(java.lang.String[] artistas) {
		this.artistas = artistas;
	}

	public java.lang.String getArtistas(int i) {
		return this.artistas[i];
	}

	public void setArtistas(int i, java.lang.String _value) {
		this.artistas[i] = _value;
	}

	private java.lang.Object __equalsCalc = null;

	public synchronized boolean equals(java.lang.Object obj) {
		if (!(obj instanceof DtFuncion))
			return false;
		DtFuncion other = (DtFuncion) obj;
		if (obj == null)
			return false;
		if (this == obj)
			return true;
		if (__equalsCalc != null) {
			return (__equalsCalc == obj);
		}
		__equalsCalc = obj;
		boolean _equals;
		_equals = true && ((this.nombre == null && other.getNombre() == null) || (this.nombre != null && this.nombre.equals(other.getNombre()))) && ((this.fecha == null && other.getFecha() == null) || (this.fecha != null && this.fecha.equals(other.getFecha())))
				&& ((this.horaInicio == null && other.getHoraInicio() == null) || (this.horaInicio != null && this.horaInicio.equals(other.getHoraInicio()))) && ((this.registro == null && other.getRegistro() == null) || (this.registro != null && this.registro.equals(other.getRegistro())))
				&& ((this.artistas == null && other.getArtistas() == null) || (this.artistas != null && java.util.Arrays.equals(this.artistas, other.getArtistas())));
		__equalsCalc = null;
		return _equals;
	}

	private boolean __hashCodeCalc = false;

	public synchronized int hashCode() {
		if (__hashCodeCalc) {
			return 0;
		}
		__hashCodeCalc = true;
		int _hashCode = 1;
		if (getNombre() != null) {
			_hashCode += getNombre().hashCode();
		}
		if (getFecha() != null) {
			_hashCode += getFecha().hashCode();
		}
		if (getHoraInicio() != null) {
			_hashCode += getHoraInicio().hashCode();
		}
		if (getRegistro() != null) {
			_hashCode += getRegistro().hashCode();
		}
		if (getArtistas() != null) {
			for (int i = 0; i < java.lang.reflect.Array.getLength(getArtistas()); i++) {
				java.lang.Object obj = java.lang.reflect.Array.get(getArtistas(), i);
				if (obj != null && !obj.getClass().isArray()) {
					_hashCode += obj.hashCode();
				}
			}
		}
		__hashCodeCalc = false;
		return _hashCode;
	}

	// Type metadata
	private static org.apache.axis.description.TypeDesc typeDesc = new org.apache.axis.description.TypeDesc(DtFuncion.class, true);

	static {
		typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtFuncion"));
		org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("nombre");
		elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("fecha");
		elemField.setXmlName(new javax.xml.namespace.QName("", "fecha"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("horaInicio");
		elemField.setXmlName(new javax.xml.namespace.QName("", "horaInicio"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "time"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("registro");
		elemField.setXmlName(new javax.xml.namespace.QName("", "registro"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("artistas");
		elemField.setXmlName(new javax.xml.namespace.QName("", "artistas"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
		elemField.setMinOccurs(0);
		elemField.setNillable(true);
		elemField.setMaxOccursUnbounded(true);
		typeDesc.addFieldDesc(elemField);
	}

	/**
	 * Return type metadata object
	 */
	public static org.apache.axis.description.TypeDesc getTypeDesc() {
		return typeDesc;
	}

	/**
	 * Get Custom Serializer
	 */
	public static org.apache.axis.encoding.Serializer getSerializer(java.lang.String mechType, java.lang.Class _javaType, javax.xml.namespace.QName _xmlType) {
		return new org.apache.axis.encoding.ser.BeanSerializer(_javaType, _xmlType, typeDesc);
	}

	/**
	 * Get Custom Deserializer
	 */
	public static org.apache.axis.encoding.Deserializer getDeserializer(java.lang.String mechType, java.lang.Class _javaType, javax.xml.namespace.QName _xmlType) {
		return new org.apache.axis.encoding.ser.BeanDeserializer(_javaType, _xmlType, typeDesc);
	}

}
