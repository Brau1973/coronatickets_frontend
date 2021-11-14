/**
 * Funcion.java
 *
 * This file was auto-generated from WSDL by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class Funcion implements java.io.Serializable {
	private publicadores.Artista[] artistas;

	private java.util.Calendar fecha;

	private publicadores.Time horaInicio;

	private byte[] imagen;

	private java.lang.String nombre;

	private java.util.Calendar registro;

	public Funcion() {
	}

	public Funcion(publicadores.Artista[] artistas, java.util.Calendar fecha, publicadores.Time horaInicio, byte[] imagen, java.lang.String nombre, java.util.Calendar registro) {
		this.artistas = artistas;
		this.fecha = fecha;
		this.horaInicio = horaInicio;
		this.imagen = imagen;
		this.nombre = nombre;
		this.registro = registro;
	}

	/**
	 * Gets the artistas value for this Funcion.
	 * 
	 * @return artistas
	 */
	public publicadores.Artista[] getArtistas() {
		return artistas;
	}

	/**
	 * Sets the artistas value for this Funcion.
	 * 
	 * @param artistas
	 */
	public void setArtistas(publicadores.Artista[] artistas) {
		this.artistas = artistas;
	}

	public publicadores.Artista getArtistas(int i) {
		return this.artistas[i];
	}

	public void setArtistas(int i, publicadores.Artista _value) {
		this.artistas[i] = _value;
	}

	/**
	 * Gets the fecha value for this Funcion.
	 * 
	 * @return fecha
	 */
	public java.util.Calendar getFecha() {
		return fecha;
	}

	/**
	 * Sets the fecha value for this Funcion.
	 * 
	 * @param fecha
	 */
	public void setFecha(java.util.Calendar fecha) {
		this.fecha = fecha;
	}

	/**
	 * Gets the horaInicio value for this Funcion.
	 * 
	 * @return horaInicio
	 */
	public publicadores.Time getHoraInicio() {
		return horaInicio;
	}

	/**
	 * Sets the horaInicio value for this Funcion.
	 * 
	 * @param horaInicio
	 */
	public void setHoraInicio(publicadores.Time horaInicio) {
		this.horaInicio = horaInicio;
	}

	/**
	 * Gets the imagen value for this Funcion.
	 * 
	 * @return imagen
	 */
	public byte[] getImagen() {
		return imagen;
	}

	/**
	 * Sets the imagen value for this Funcion.
	 * 
	 * @param imagen
	 */
	public void setImagen(byte[] imagen) {
		this.imagen = imagen;
	}

	/**
	 * Gets the nombre value for this Funcion.
	 * 
	 * @return nombre
	 */
	public java.lang.String getNombre() {
		return nombre;
	}

	/**
	 * Sets the nombre value for this Funcion.
	 * 
	 * @param nombre
	 */
	public void setNombre(java.lang.String nombre) {
		this.nombre = nombre;
	}

	/**
	 * Gets the registro value for this Funcion.
	 * 
	 * @return registro
	 */
	public java.util.Calendar getRegistro() {
		return registro;
	}

	/**
	 * Sets the registro value for this Funcion.
	 * 
	 * @param registro
	 */
	public void setRegistro(java.util.Calendar registro) {
		this.registro = registro;
	}

	private java.lang.Object __equalsCalc = null;

	public synchronized boolean equals(java.lang.Object obj) {
		if (!(obj instanceof Funcion))
			return false;
		Funcion other = (Funcion) obj;
		if (obj == null)
			return false;
		if (this == obj)
			return true;
		if (__equalsCalc != null) {
			return (__equalsCalc == obj);
		}
		__equalsCalc = obj;
		boolean _equals;
		_equals = true && ((this.artistas == null && other.getArtistas() == null) || (this.artistas != null && java.util.Arrays.equals(this.artistas, other.getArtistas()))) && ((this.fecha == null && other.getFecha() == null) || (this.fecha != null && this.fecha.equals(other.getFecha())))
				&& ((this.horaInicio == null && other.getHoraInicio() == null) || (this.horaInicio != null && this.horaInicio.equals(other.getHoraInicio()))) && ((this.imagen == null && other.getImagen() == null) || (this.imagen != null && java.util.Arrays.equals(this.imagen, other.getImagen())))
				&& ((this.nombre == null && other.getNombre() == null) || (this.nombre != null && this.nombre.equals(other.getNombre()))) && ((this.registro == null && other.getRegistro() == null) || (this.registro != null && this.registro.equals(other.getRegistro())));
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
		if (getArtistas() != null) {
			for (int i = 0; i < java.lang.reflect.Array.getLength(getArtistas()); i++) {
				java.lang.Object obj = java.lang.reflect.Array.get(getArtistas(), i);
				if (obj != null && !obj.getClass().isArray()) {
					_hashCode += obj.hashCode();
				}
			}
		}
		if (getFecha() != null) {
			_hashCode += getFecha().hashCode();
		}
		if (getHoraInicio() != null) {
			_hashCode += getHoraInicio().hashCode();
		}
		if (getImagen() != null) {
			for (int i = 0; i < java.lang.reflect.Array.getLength(getImagen()); i++) {
				java.lang.Object obj = java.lang.reflect.Array.get(getImagen(), i);
				if (obj != null && !obj.getClass().isArray()) {
					_hashCode += obj.hashCode();
				}
			}
		}
		if (getNombre() != null) {
			_hashCode += getNombre().hashCode();
		}
		if (getRegistro() != null) {
			_hashCode += getRegistro().hashCode();
		}
		__hashCodeCalc = false;
		return _hashCode;
	}

	// Type metadata
	private static org.apache.axis.description.TypeDesc typeDesc = new org.apache.axis.description.TypeDesc(Funcion.class, true);

	static {
		typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "funcion"));
		org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("artistas");
		elemField.setXmlName(new javax.xml.namespace.QName("", "artistas"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "artista"));
		elemField.setMinOccurs(0);
		elemField.setNillable(true);
		elemField.setMaxOccursUnbounded(true);
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
		elemField.setFieldName("imagen");
		elemField.setXmlName(new javax.xml.namespace.QName("", "imagen"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "base64Binary"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("nombre");
		elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
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
