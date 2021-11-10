/**
 * DtUsuario.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtUsuario  implements java.io.Serializable {
    private java.lang.String apellido;

    private java.lang.String contrasenia;

    private java.lang.String email;

    private byte[] imagen;

    private java.lang.String nickname;

    private java.lang.String nombre;

    private java.lang.String[] seguidores;

    private java.lang.String[] seguidos;

    private java.util.Calendar fNacimiento;

    public DtUsuario() {
    }

    public DtUsuario(
           java.lang.String apellido,
           java.lang.String contrasenia,
           java.lang.String email,
           byte[] imagen,
           java.lang.String nickname,
           java.lang.String nombre,
           java.lang.String[] seguidores,
           java.lang.String[] seguidos,
           java.util.Calendar fNacimiento) {
           this.apellido = apellido;
           this.contrasenia = contrasenia;
           this.email = email;
           this.imagen = imagen;
           this.nickname = nickname;
           this.nombre = nombre;
           this.seguidores = seguidores;
           this.seguidos = seguidos;
           this.fNacimiento = fNacimiento;
    }


    /**
     * Gets the apellido value for this DtUsuario.
     * 
     * @return apellido
     */
    public java.lang.String getApellido() {
        return apellido;
    }


    /**
     * Sets the apellido value for this DtUsuario.
     * 
     * @param apellido
     */
    public void setApellido(java.lang.String apellido) {
        this.apellido = apellido;
    }


    /**
     * Gets the contrasenia value for this DtUsuario.
     * 
     * @return contrasenia
     */
    public java.lang.String getContrasenia() {
        return contrasenia;
    }


    /**
     * Sets the contrasenia value for this DtUsuario.
     * 
     * @param contrasenia
     */
    public void setContrasenia(java.lang.String contrasenia) {
        this.contrasenia = contrasenia;
    }


    /**
     * Gets the email value for this DtUsuario.
     * 
     * @return email
     */
    public java.lang.String getEmail() {
        return email;
    }


    /**
     * Sets the email value for this DtUsuario.
     * 
     * @param email
     */
    public void setEmail(java.lang.String email) {
        this.email = email;
    }


    /**
     * Gets the imagen value for this DtUsuario.
     * 
     * @return imagen
     */
    public byte[] getImagen() {
        return imagen;
    }


    /**
     * Sets the imagen value for this DtUsuario.
     * 
     * @param imagen
     */
    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }


    /**
     * Gets the nickname value for this DtUsuario.
     * 
     * @return nickname
     */
    public java.lang.String getNickname() {
        return nickname;
    }


    /**
     * Sets the nickname value for this DtUsuario.
     * 
     * @param nickname
     */
    public void setNickname(java.lang.String nickname) {
        this.nickname = nickname;
    }


    /**
     * Gets the nombre value for this DtUsuario.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtUsuario.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the seguidores value for this DtUsuario.
     * 
     * @return seguidores
     */
    public java.lang.String[] getSeguidores() {
        return seguidores;
    }


    /**
     * Sets the seguidores value for this DtUsuario.
     * 
     * @param seguidores
     */
    public void setSeguidores(java.lang.String[] seguidores) {
        this.seguidores = seguidores;
    }

    public java.lang.String getSeguidores(int i) {
        return this.seguidores[i];
    }

    public void setSeguidores(int i, java.lang.String _value) {
        this.seguidores[i] = _value;
    }


    /**
     * Gets the seguidos value for this DtUsuario.
     * 
     * @return seguidos
     */
    public java.lang.String[] getSeguidos() {
        return seguidos;
    }


    /**
     * Sets the seguidos value for this DtUsuario.
     * 
     * @param seguidos
     */
    public void setSeguidos(java.lang.String[] seguidos) {
        this.seguidos = seguidos;
    }

    public java.lang.String getSeguidos(int i) {
        return this.seguidos[i];
    }

    public void setSeguidos(int i, java.lang.String _value) {
        this.seguidos[i] = _value;
    }


    /**
     * Gets the fNacimiento value for this DtUsuario.
     * 
     * @return fNacimiento
     */
    public java.util.Calendar getFNacimiento() {
        return fNacimiento;
    }


    /**
     * Sets the fNacimiento value for this DtUsuario.
     * 
     * @param fNacimiento
     */
    public void setFNacimiento(java.util.Calendar fNacimiento) {
        this.fNacimiento = fNacimiento;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtUsuario)) return false;
        DtUsuario other = (DtUsuario) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.apellido==null && other.getApellido()==null) || 
             (this.apellido!=null &&
              this.apellido.equals(other.getApellido()))) &&
            ((this.contrasenia==null && other.getContrasenia()==null) || 
             (this.contrasenia!=null &&
              this.contrasenia.equals(other.getContrasenia()))) &&
            ((this.email==null && other.getEmail()==null) || 
             (this.email!=null &&
              this.email.equals(other.getEmail()))) &&
            ((this.imagen==null && other.getImagen()==null) || 
             (this.imagen!=null &&
              java.util.Arrays.equals(this.imagen, other.getImagen()))) &&
            ((this.nickname==null && other.getNickname()==null) || 
             (this.nickname!=null &&
              this.nickname.equals(other.getNickname()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.seguidores==null && other.getSeguidores()==null) || 
             (this.seguidores!=null &&
              java.util.Arrays.equals(this.seguidores, other.getSeguidores()))) &&
            ((this.seguidos==null && other.getSeguidos()==null) || 
             (this.seguidos!=null &&
              java.util.Arrays.equals(this.seguidos, other.getSeguidos()))) &&
            ((this.fNacimiento==null && other.getFNacimiento()==null) || 
             (this.fNacimiento!=null &&
              this.fNacimiento.equals(other.getFNacimiento())));
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
        if (getApellido() != null) {
            _hashCode += getApellido().hashCode();
        }
        if (getContrasenia() != null) {
            _hashCode += getContrasenia().hashCode();
        }
        if (getEmail() != null) {
            _hashCode += getEmail().hashCode();
        }
        if (getImagen() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getImagen());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getImagen(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getNickname() != null) {
            _hashCode += getNickname().hashCode();
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getSeguidores() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getSeguidores());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getSeguidores(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getSeguidos() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getSeguidos());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getSeguidos(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getFNacimiento() != null) {
            _hashCode += getFNacimiento().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtUsuario.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtUsuario"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("apellido");
        elemField.setXmlName(new javax.xml.namespace.QName("", "apellido"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("contrasenia");
        elemField.setXmlName(new javax.xml.namespace.QName("", "contrasenia"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("email");
        elemField.setXmlName(new javax.xml.namespace.QName("", "email"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
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
        elemField.setFieldName("nickname");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nickname"));
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
        elemField.setFieldName("seguidores");
        elemField.setXmlName(new javax.xml.namespace.QName("", "seguidores"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seguidos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "seguidos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("FNacimiento");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fNacimiento"));
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
