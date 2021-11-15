<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorPaquetePublishProxyid" scope="session" class="publicadores.ControladorPaquetePublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorPaquetePublishProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleControladorPaquetePublishProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleControladorPaquetePublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorPaquetePublish getControladorPaquetePublish10mtemp = sampleControladorPaquetePublishProxyid.getControladorPaquetePublish();
if(getControladorPaquetePublish10mtemp == null){
%>
<%=getControladorPaquetePublish10mtemp %>
<%
}else{
        if(getControladorPaquetePublish10mtemp!= null){
        String tempreturnp11 = getControladorPaquetePublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg016");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        String arg1_2id=  request.getParameter("arg118");
            java.lang.String arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
         arg1_2idTemp  = arg1_2id;
        }
        sampleControladorPaquetePublishProxyid.agregarEspectaculo(arg0_1idTemp,arg1_2idTemp);
break;
case 20:
        gotMethod = true;
        publicadores.DtPaqueteEspectaculo[] obtenerPaquetes20mtemp = sampleControladorPaquetePublishProxyid.obtenerPaquetes();
if(obtenerPaquetes20mtemp == null){
%>
<%=obtenerPaquetes20mtemp %>
<%
}else{
        String tempreturnp21 = null;
        if(obtenerPaquetes20mtemp != null){
        java.util.List listreturnp21= java.util.Arrays.asList(obtenerPaquetes20mtemp);
        tempreturnp21 = listreturnp21.toString();
        }
        %>
        <%=tempreturnp21%>
        <%
}
break;
case 23:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg026");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        boolean existePaquete23mtemp = sampleControladorPaquetePublishProxyid.existePaquete(arg0_3idTemp);
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existePaquete23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
break;
case 28:
        gotMethod = true;
        String descuento_5id=  request.getParameter("descuento33");
        int descuento_5idTemp  = Integer.parseInt(descuento_5id);
        String descripcion_6id=  request.getParameter("descripcion35");
            java.lang.String descripcion_6idTemp = null;
        if(!descripcion_6id.equals("")){
         descripcion_6idTemp  = descripcion_6id;
        }
        String fechaInicio_7id=  request.getParameter("fechaInicio37");
            java.util.Calendar fechaInicio_7idTemp = null;
        if(!fechaInicio_7id.equals("")){
        java.text.DateFormat dateFormatfechaInicio37 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaInicio37  = dateFormatfechaInicio37.parse(fechaInicio_7id);
         fechaInicio_7idTemp = new java.util.GregorianCalendar();
        fechaInicio_7idTemp.setTime(dateTempfechaInicio37);
        }
        String fechaFin_8id=  request.getParameter("fechaFin39");
            java.util.Calendar fechaFin_8idTemp = null;
        if(!fechaFin_8id.equals("")){
        java.text.DateFormat dateFormatfechaFin39 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaFin39  = dateFormatfechaFin39.parse(fechaFin_8id);
         fechaFin_8idTemp = new java.util.GregorianCalendar();
        fechaFin_8idTemp.setTime(dateTempfechaFin39);
        }
        String fechaAlta_9id=  request.getParameter("fechaAlta41");
            java.util.Calendar fechaAlta_9idTemp = null;
        if(!fechaAlta_9id.equals("")){
        java.text.DateFormat dateFormatfechaAlta41 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaAlta41  = dateFormatfechaAlta41.parse(fechaAlta_9id);
         fechaAlta_9idTemp = new java.util.GregorianCalendar();
        fechaAlta_9idTemp.setTime(dateTempfechaAlta41);
        }
        String nombre_10id=  request.getParameter("nombre43");
            java.lang.String nombre_10idTemp = null;
        if(!nombre_10id.equals("")){
         nombre_10idTemp  = nombre_10id;
        }
        %>
        <jsp:useBean id="publicadores1PaqueteEspectaculos_4id" scope="session" class="publicadores.PaqueteEspectaculos" />
        <%
        publicadores1PaqueteEspectaculos_4id.setDescuento(descuento_5idTemp);
        publicadores1PaqueteEspectaculos_4id.setDescripcion(descripcion_6idTemp);
        publicadores1PaqueteEspectaculos_4id.setFechaInicio(fechaInicio_7idTemp);
        publicadores1PaqueteEspectaculos_4id.setFechaFin(fechaFin_8idTemp);
        publicadores1PaqueteEspectaculos_4id.setFechaAlta(fechaAlta_9idTemp);
        publicadores1PaqueteEspectaculos_4id.setNombre(nombre_10idTemp);
        sampleControladorPaquetePublishProxyid.altaPaquete(publicadores1PaqueteEspectaculos_4id);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>