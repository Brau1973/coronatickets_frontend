/**
 * PaqueteEspectaculos.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class PaqueteEspectaculos  implements java.io.Serializable {
    private java.lang.String descripcion;

    private int descuento;

    private publicadores.Espectaculo[] espectaculos;

    private java.util.Calendar fechaAlta;

    private java.util.Calendar fechaFin;

    private java.util.Calendar fechaInicio;

    private java.lang.String nombre;

    public PaqueteEspectaculos() {
    }

    public PaqueteEspectaculos(
           java.lang.String descripcion,
           int descuento,
           publicadores.Espectaculo[] espectaculos,
           java.util.Calendar fechaAlta,
           java.util.Calendar fechaFin,
           java.util.Calendar fechaInicio,
           java.lang.String nombre) {
           this.descripcion = descripcion;
           this.descuento = descuento;
           this.espectaculos = espectaculos;
           this.fechaAlta = fechaAlta;
           this.fechaFin = fechaFin;
           this.fechaInicio = fechaInicio;
           this.nombre = nombre;
    }


    /**
     * Gets the descripcion value for this PaqueteEspectaculos.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this PaqueteEspectaculos.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the descuento value for this PaqueteEspectaculos.
     * 
     * @return descuento
     */
    public int getDescuento() {
        return descuento;
    }


    /**
     * Sets the descuento value for this PaqueteEspectaculos.
     * 
     * @param descuento
     */
    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }


    /**
     * Gets the espectaculos value for this PaqueteEspectaculos.
     * 
     * @return espectaculos
     */
    public publicadores.Espectaculo[] getEspectaculos() {
        return espectaculos;
    }


    /**
     * Sets the espectaculos value for this PaqueteEspectaculos.
     * 
     * @param espectaculos
     */
    public void setEspectaculos(publicadores.Espectaculo[] espectaculos) {
        this.espectaculos = espectaculos;
    }

    public publicadores.Espectaculo getEspectaculos(int i) {
        return this.espectaculos[i];
    }

    public void setEspectaculos(int i, publicadores.Espectaculo _value) {
        this.espectaculos[i] = _value;
    }


    /**
     * Gets the fechaAlta value for this PaqueteEspectaculos.
     * 
     * @return fechaAlta
     */
    public java.util.Calendar getFechaAlta() {
        return fechaAlta;
    }


    /**
     * Sets the fechaAlta value for this PaqueteEspectaculos.
     * 
     * @param fechaAlta
     */
    public void setFechaAlta(java.util.Calendar fechaAlta) {
        this.fechaAlta = fechaAlta;
    }


    /**
     * Gets the fechaFin value for this PaqueteEspectaculos.
     * 
     * @return fechaFin
     */
    public java.util.Calendar getFechaFin() {
        return fechaFin;
    }


    /**
     * Sets the fechaFin value for this PaqueteEspectaculos.
     * 
     * @param fechaFin
     */
    public void setFechaFin(java.util.Calendar fechaFin) {
        this.fechaFin = fechaFin;
    }


    /**
     * Gets the fechaInicio value for this PaqueteEspectaculos.
     * 
     * @return fechaInicio
     */
    public java.util.Calendar getFechaInicio() {
        return fechaInicio;
    }


    /**
     * Sets the fechaInicio value for this PaqueteEspectaculos.
     * 
     * @param fechaInicio
     */
    public void setFechaInicio(java.util.Calendar fechaInicio) {
        this.fechaInicio = fechaInicio;
    }


    /**
     * Gets the nombre value for this PaqueteEspectaculos.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this PaqueteEspectaculos.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PaqueteEspectaculos)) return false;
        PaqueteEspectaculos other = (PaqueteEspectaculos) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            this.descuento == other.getDescuento() &&
            ((this.espectaculos==null && other.getEspectaculos()==null) || 
             (this.espectaculos!=null &&
              java.util.Arrays.equals(this.espectaculos, other.getEspectaculos()))) &&
            ((this.fechaAlta==null && other.getFechaAlta()==null) || 
             (this.fechaAlta!=null &&
              this.fechaAlta.equals(other.getFechaAlta()))) &&
            ((this.fechaFin==null && other.getFechaFin()==null) || 
             (this.fechaFin!=null &&
              this.fechaFin.equals(other.getFechaFin()))) &&
            ((this.fechaInicio==null && other.getFechaInicio()==null) || 
             (this.fechaInicio!=null &&
              this.fechaInicio.equals(other.getFechaInicio()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre())));
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
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        _hashCode += getDescuento();
        if (getEspectaculos() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getEspectaculos());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getEspectaculos(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getFechaAlta() != null) {
            _hashCode += getFechaAlta().hashCode();
        }
        if (getFechaFin() != null) {
            _hashCode += getFechaFin().hashCode();
        }
        if (getFechaInicio() != null) {
            _hashCode += getFechaInicio().hashCode();
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PaqueteEspectaculos.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "paqueteEspectaculos"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descuento");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descuento"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("espectaculos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "espectaculos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "espectaculo"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaAlta");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaAlta"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaFin");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaFin"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaInicio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaInicio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
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
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
