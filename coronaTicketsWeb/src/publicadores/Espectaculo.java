/**
 * Espectaculo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

import java.util.ArrayList;
import java.util.List;


public class Espectaculo  implements java.io.Serializable {
    private int cantMaxEsp;

    private int cantMinEsp;

    private int costo;

    private java.lang.String descripcion;

    private int duracion;

    private publicadores.Funcion[] funciones;

    private java.lang.String nombre;

    private publicadores.PaqueteEspectaculos[] paquete;

    private java.util.Calendar registro;

    private java.lang.String url;

    public Espectaculo() {
    }

    public Espectaculo(
           int cantMaxEsp,
           int cantMinEsp,
           int costo,
           java.lang.String descripcion,
           int duracion,
           publicadores.Funcion[] funciones,
           java.lang.String nombre,
           publicadores.PaqueteEspectaculos[] paquete,
           java.util.Calendar registro,
           java.lang.String url) {
           this.cantMaxEsp = cantMaxEsp;
           this.cantMinEsp = cantMinEsp;
           this.costo = costo;
           this.descripcion = descripcion;
           this.duracion = duracion;
           this.funciones = funciones;
           this.nombre = nombre;
           this.paquete = paquete;
           this.registro = registro;
           this.url = url;
    }


    public int getCantMaxEsp() {
        return cantMaxEsp;
    }

    public void setCantMaxEsp(int cantMaxEsp) {
        this.cantMaxEsp = cantMaxEsp;
    }

    public int getCantMinEsp() {
        return cantMinEsp;
    }

    public void setCantMinEsp(int cantMinEsp) {
        this.cantMinEsp = cantMinEsp;
    }

    public int getCosto() {
        return costo;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }


    public java.lang.String getDescripcion() {
        return descripcion;
    }


    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }

    public int getDuracion() {
        return duracion;
    }


    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public publicadores.Funcion[] getFunciones() {
        return funciones;
    }

    public void setFunciones(publicadores.Funcion[] funciones) {
        this.funciones = funciones;
    }

    public publicadores.Funcion getFunciones(int i) {
        return this.funciones[i];
    }

    public void setFunciones(int i, publicadores.Funcion _value) {
        this.funciones[i] = _value;
    }

    public java.lang.String getNombre() {
        return nombre;
    }


    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }

    public publicadores.PaqueteEspectaculos[] getPaquete() {
        return paquete;
    }


    public void setPaquete(publicadores.PaqueteEspectaculos[] paquete) {
        this.paquete = paquete;
    }

    public publicadores.PaqueteEspectaculos getPaquete(int i) {
        return this.paquete[i];
    }

    public void setPaquete(int i, publicadores.PaqueteEspectaculos _value) {
        this.paquete[i] = _value;
    }

    public java.util.Calendar getRegistro() {
        return registro;
    }

    public void setRegistro(java.util.Calendar registro) {
        this.registro = registro;
    }


    public java.lang.String getUrl() {
        return url;
    }


    public void setUrl(java.lang.String url) {
        this.url = url;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Espectaculo)) return false;
        Espectaculo other = (Espectaculo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.cantMaxEsp == other.getCantMaxEsp() &&
            this.cantMinEsp == other.getCantMinEsp() &&
            this.costo == other.getCosto() &&
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            this.duracion == other.getDuracion() &&
            ((this.funciones==null && other.getFunciones()==null) || 
             (this.funciones!=null &&
              java.util.Arrays.equals(this.funciones, other.getFunciones()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.paquete==null && other.getPaquete()==null) || 
             (this.paquete!=null &&
              java.util.Arrays.equals(this.paquete, other.getPaquete()))) &&
            ((this.registro==null && other.getRegistro()==null) || 
             (this.registro!=null &&
              this.registro.equals(other.getRegistro()))) &&
            ((this.url==null && other.getUrl()==null) || 
             (this.url!=null &&
              this.url.equals(other.getUrl())));
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
        _hashCode += getCantMaxEsp();
        _hashCode += getCantMinEsp();
        _hashCode += getCosto();
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        _hashCode += getDuracion();
        if (getFunciones() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getFunciones());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getFunciones(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getPaquete() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getPaquete());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getPaquete(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getRegistro() != null) {
            _hashCode += getRegistro().hashCode();
        }
        if (getUrl() != null) {
            _hashCode += getUrl().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Espectaculo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "espectaculo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantMaxEsp");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantMaxEsp"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantMinEsp");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantMinEsp"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("costo");
        elemField.setXmlName(new javax.xml.namespace.QName("", "costo"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
        elemField.setFieldName("funciones");
        elemField.setXmlName(new javax.xml.namespace.QName("", "funciones"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "funcion"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paquete");
        elemField.setXmlName(new javax.xml.namespace.QName("", "paquete"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "paqueteEspectaculos"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("registro");
        elemField.setXmlName(new javax.xml.namespace.QName("", "registro"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("url");
        elemField.setXmlName(new javax.xml.namespace.QName("", "url"));
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
