/**
 * DtEspectaculo.java
 *
 * This file was auto-generated from WSDL by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtEspectaculo implements java.io.Serializable {
	private java.lang.String artista;

	private java.lang.String plataforma;

	private java.lang.String nombre;

	private java.lang.String descripcion;

	private int duracion;

	private int cantMin;

	private int cantMax;

	private java.lang.String url;

	private int costo;

	private java.util.Calendar registro;

	private publicadores.DtPaqueteEspectaculo[] paquetes;

	private publicadores.DtFuncion[] funciones;

	public DtEspectaculo() {
	}

	public DtEspectaculo(java.lang.String artista, java.lang.String plataforma, java.lang.String nombre, java.lang.String descripcion, int duracion, int cantMin, int cantMax, java.lang.String url, int costo, java.util.Calendar registro, publicadores.DtPaqueteEspectaculo[] paquetes, publicadores.DtFuncion[] funciones) {
		this.artista = artista;
		this.plataforma = plataforma;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.duracion = duracion;
		this.cantMin = cantMin;
		this.cantMax = cantMax;
		this.url = url;
		this.costo = costo;
		this.registro = registro;
		this.paquetes = paquetes;
		this.funciones = funciones;
	}

	/**
	 * Gets the artista value for this DtEspectaculo.
	 * 
	 * @return artista
	 */
	public java.lang.String getArtista() {
		return artista;
	}

	/**
	 * Sets the artista value for this DtEspectaculo.
	 * 
	 * @param artista
	 */
	public void setArtista(java.lang.String artista) {
		this.artista = artista;
	}

	/**
	 * Gets the plataforma value for this DtEspectaculo.
	 * 
	 * @return plataforma
	 */
	public java.lang.String getPlataforma() {
		return plataforma;
	}

	/**
	 * Sets the plataforma value for this DtEspectaculo.
	 * 
	 * @param plataforma
	 */
	public void setPlataforma(java.lang.String plataforma) {
		this.plataforma = plataforma;
	}

	/**
	 * Gets the nombre value for this DtEspectaculo.
	 * 
	 * @return nombre
	 */
	public java.lang.String getNombre() {
		return nombre;
	}

	/**
	 * Sets the nombre value for this DtEspectaculo.
	 * 
	 * @param nombre
	 */
	public void setNombre(java.lang.String nombre) {
		this.nombre = nombre;
	}

	/**
	 * Gets the descripcion value for this DtEspectaculo.
	 * 
	 * @return descripcion
	 */
	public java.lang.String getDescripcion() {
		return descripcion;
	}

	/**
	 * Sets the descripcion value for this DtEspectaculo.
	 * 
	 * @param descripcion
	 */
	public void setDescripcion(java.lang.String descripcion) {
		this.descripcion = descripcion;
	}

	/**
	 * Gets the duracion value for this DtEspectaculo.
	 * 
	 * @return duracion
	 */
	public int getDuracion() {
		return duracion;
	}

	/**
	 * Sets the duracion value for this DtEspectaculo.
	 * 
	 * @param duracion
	 */
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	/**
	 * Gets the cantMin value for this DtEspectaculo.
	 * 
	 * @return cantMin
	 */
	public int getCantMin() {
		return cantMin;
	}

	/**
	 * Sets the cantMin value for this DtEspectaculo.
	 * 
	 * @param cantMin
	 */
	public void setCantMin(int cantMin) {
		this.cantMin = cantMin;
	}

	/**
	 * Gets the cantMax value for this DtEspectaculo.
	 * 
	 * @return cantMax
	 */
	public int getCantMax() {
		return cantMax;
	}

	/**
	 * Sets the cantMax value for this DtEspectaculo.
	 * 
	 * @param cantMax
	 */
	public void setCantMax(int cantMax) {
		this.cantMax = cantMax;
	}

	/**
	 * Gets the url value for this DtEspectaculo.
	 * 
	 * @return url
	 */
	public java.lang.String getUrl() {
		return url;
	}

	/**
	 * Sets the url value for this DtEspectaculo.
	 * 
	 * @param url
	 */
	public void setUrl(java.lang.String url) {
		this.url = url;
	}

	/**
	 * Gets the costo value for this DtEspectaculo.
	 * 
	 * @return costo
	 */
	public int getCosto() {
		return costo;
	}

	/**
	 * Sets the costo value for this DtEspectaculo.
	 * 
	 * @param costo
	 */
	public void setCosto(int costo) {
		this.costo = costo;
	}

	/**
	 * Gets the registro value for this DtEspectaculo.
	 * 
	 * @return registro
	 */
	public java.util.Calendar getRegistro() {
		return registro;
	}

	/**
	 * Sets the registro value for this DtEspectaculo.
	 * 
	 * @param registro
	 */
	public void setRegistro(java.util.Calendar registro) {
		this.registro = registro;
	}

	/**
	 * Gets the paquetes value for this DtEspectaculo.
	 * 
	 * @return paquetes
	 */
	public publicadores.DtPaqueteEspectaculo[] getPaquetes() {
		return paquetes;
	}

	/**
	 * Sets the paquetes value for this DtEspectaculo.
	 * 
	 * @param paquetes
	 */
	public void setPaquetes(publicadores.DtPaqueteEspectaculo[] paquetes) {
		this.paquetes = paquetes;
	}

	public publicadores.DtPaqueteEspectaculo getPaquetes(int i) {
		return this.paquetes[i];
	}

	public void setPaquetes(int i, publicadores.DtPaqueteEspectaculo _value) {
		this.paquetes[i] = _value;
	}

	/**
	 * Gets the funciones value for this DtEspectaculo.
	 * 
	 * @return funciones
	 */
	public publicadores.DtFuncion[] getFunciones() {
		return funciones;
	}

	/**
	 * Sets the funciones value for this DtEspectaculo.
	 * 
	 * @param funciones
	 */
	public void setFunciones(publicadores.DtFuncion[] funciones) {
		this.funciones = funciones;
	}

	public publicadores.DtFuncion getFunciones(int i) {
		return this.funciones[i];
	}

	public void setFunciones(int i, publicadores.DtFuncion _value) {
		this.funciones[i] = _value;
	}

	private java.lang.Object __equalsCalc = null;

	public synchronized boolean equals(java.lang.Object obj) {
		if (!(obj instanceof DtEspectaculo))
			return false;
		DtEspectaculo other = (DtEspectaculo) obj;
		if (obj == null)
			return false;
		if (this == obj)
			return true;
		if (__equalsCalc != null) {
			return (__equalsCalc == obj);
		}
		__equalsCalc = obj;
		boolean _equals;
		_equals = true && ((this.artista == null && other.getArtista() == null) || (this.artista != null && this.artista.equals(other.getArtista()))) && ((this.plataforma == null && other.getPlataforma() == null) || (this.plataforma != null && this.plataforma.equals(other.getPlataforma())))
				&& ((this.nombre == null && other.getNombre() == null) || (this.nombre != null && this.nombre.equals(other.getNombre()))) && ((this.descripcion == null && other.getDescripcion() == null) || (this.descripcion != null && this.descripcion.equals(other.getDescripcion()))) && this.duracion == other.getDuracion()
				&& this.cantMin == other.getCantMin() && this.cantMax == other.getCantMax() && ((this.url == null && other.getUrl() == null) || (this.url != null && this.url.equals(other.getUrl()))) && this.costo == other.getCosto()
				&& ((this.registro == null && other.getRegistro() == null) || (this.registro != null && this.registro.equals(other.getRegistro()))) && ((this.paquetes == null && other.getPaquetes() == null) || (this.paquetes != null && java.util.Arrays.equals(this.paquetes, other.getPaquetes())))
				&& ((this.funciones == null && other.getFunciones() == null) || (this.funciones != null && java.util.Arrays.equals(this.funciones, other.getFunciones())));
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
		if (getArtista() != null) {
			_hashCode += getArtista().hashCode();
		}
		if (getPlataforma() != null) {
			_hashCode += getPlataforma().hashCode();
		}
		if (getNombre() != null) {
			_hashCode += getNombre().hashCode();
		}
		if (getDescripcion() != null) {
			_hashCode += getDescripcion().hashCode();
		}
		_hashCode += getDuracion();
		_hashCode += getCantMin();
		_hashCode += getCantMax();
		if (getUrl() != null) {
			_hashCode += getUrl().hashCode();
		}
		_hashCode += getCosto();
		if (getRegistro() != null) {
			_hashCode += getRegistro().hashCode();
		}
		if (getPaquetes() != null) {
			for (int i = 0; i < java.lang.reflect.Array.getLength(getPaquetes()); i++) {
				java.lang.Object obj = java.lang.reflect.Array.get(getPaquetes(), i);
				if (obj != null && !obj.getClass().isArray()) {
					_hashCode += obj.hashCode();
				}
			}
		}
		if (getFunciones() != null) {
			for (int i = 0; i < java.lang.reflect.Array.getLength(getFunciones()); i++) {
				java.lang.Object obj = java.lang.reflect.Array.get(getFunciones(), i);
				if (obj != null && !obj.getClass().isArray()) {
					_hashCode += obj.hashCode();
				}
			}
		}
		__hashCodeCalc = false;
		return _hashCode;
	}

	// Type metadata
	private static org.apache.axis.description.TypeDesc typeDesc = new org.apache.axis.description.TypeDesc(DtEspectaculo.class, true);

	static {
		typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtEspectaculo"));
		org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("artista");
		elemField.setXmlName(new javax.xml.namespace.QName("", "artista"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("plataforma");
		elemField.setXmlName(new javax.xml.namespace.QName("", "plataforma"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
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
		elemField.setFieldName("descripcion");
		elemField.setXmlName(new javax.xml.namespace.QName("", "descripcion"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("duracion");
		elemField.setXmlName(new javax.xml.namespace.QName("", "duracion"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("cantMin");
		elemField.setXmlName(new javax.xml.namespace.QName("", "cantMin"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("cantMax");
		elemField.setXmlName(new javax.xml.namespace.QName("", "cantMax"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("url");
		elemField.setXmlName(new javax.xml.namespace.QName("", "url"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
		elemField.setMinOccurs(0);
		elemField.setNillable(false);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("costo");
		elemField.setXmlName(new javax.xml.namespace.QName("", "costo"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
		elemField.setFieldName("paquetes");
		elemField.setXmlName(new javax.xml.namespace.QName("", "paquetes"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtPaqueteEspectaculo"));
		elemField.setMinOccurs(0);
		elemField.setNillable(true);
		elemField.setMaxOccursUnbounded(true);
		typeDesc.addFieldDesc(elemField);
		elemField = new org.apache.axis.description.ElementDesc();
		elemField.setFieldName("funciones");
		elemField.setXmlName(new javax.xml.namespace.QName("", "funciones"));
		elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtFuncion"));
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
