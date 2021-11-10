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
        publicadores.DtPaqueteEspectaculo[] obtenerPaquetes13mtemp = sampleControladorPaquetePublishProxyid.obtenerPaquetes();
if(obtenerPaquetes13mtemp == null){
%>
<%=obtenerPaquetes13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(obtenerPaquetes13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(obtenerPaquetes13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
        String descuento_2id=  request.getParameter("descuento21");
        int descuento_2idTemp  = Integer.parseInt(descuento_2id);
        String descripcion_3id=  request.getParameter("descripcion23");
            java.lang.String descripcion_3idTemp = null;
        if(!descripcion_3id.equals("")){
         descripcion_3idTemp  = descripcion_3id;
        }
        String fechaInicio_4id=  request.getParameter("fechaInicio25");
            java.util.Calendar fechaInicio_4idTemp = null;
        if(!fechaInicio_4id.equals("")){
        java.text.DateFormat dateFormatfechaInicio25 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaInicio25  = dateFormatfechaInicio25.parse(fechaInicio_4id);
         fechaInicio_4idTemp = new java.util.GregorianCalendar();
        fechaInicio_4idTemp.setTime(dateTempfechaInicio25);
        }
        String fechaFin_5id=  request.getParameter("fechaFin27");
            java.util.Calendar fechaFin_5idTemp = null;
        if(!fechaFin_5id.equals("")){
        java.text.DateFormat dateFormatfechaFin27 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaFin27  = dateFormatfechaFin27.parse(fechaFin_5id);
         fechaFin_5idTemp = new java.util.GregorianCalendar();
        fechaFin_5idTemp.setTime(dateTempfechaFin27);
        }
        String fechaAlta_6id=  request.getParameter("fechaAlta29");
            java.util.Calendar fechaAlta_6idTemp = null;
        if(!fechaAlta_6id.equals("")){
        java.text.DateFormat dateFormatfechaAlta29 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaAlta29  = dateFormatfechaAlta29.parse(fechaAlta_6id);
         fechaAlta_6idTemp = new java.util.GregorianCalendar();
        fechaAlta_6idTemp.setTime(dateTempfechaAlta29);
        }
        String nombre_7id=  request.getParameter("nombre31");
            java.lang.String nombre_7idTemp = null;
        if(!nombre_7id.equals("")){
         nombre_7idTemp  = nombre_7id;
        }
        %>
        <jsp:useBean id="publicadores1PaqueteEspectaculos_1id" scope="session" class="publicadores.PaqueteEspectaculos" />
        <%
        publicadores1PaqueteEspectaculos_1id.setDescuento(descuento_2idTemp);
        publicadores1PaqueteEspectaculos_1id.setDescripcion(descripcion_3idTemp);
        publicadores1PaqueteEspectaculos_1id.setFechaInicio(fechaInicio_4idTemp);
        publicadores1PaqueteEspectaculos_1id.setFechaFin(fechaFin_5idTemp);
        publicadores1PaqueteEspectaculos_1id.setFechaAlta(fechaAlta_6idTemp);
        publicadores1PaqueteEspectaculos_1id.setNombre(nombre_7idTemp);
        sampleControladorPaquetePublishProxyid.altaPaquete(publicadores1PaqueteEspectaculos_1id);
break;
case 33:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg036");
            java.lang.String arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
         arg0_8idTemp  = arg0_8id;
        }
        boolean existePaquete33mtemp = sampleControladorPaquetePublishProxyid.existePaquete(arg0_8idTemp);
        String tempResultreturnp34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existePaquete33mtemp));
        %>
        <%= tempResultreturnp34 %>
        <%
break;
case 38:
        gotMethod = true;
        String arg0_9id=  request.getParameter("arg041");
            java.lang.String arg0_9idTemp = null;
        if(!arg0_9id.equals("")){
         arg0_9idTemp  = arg0_9id;
        }
        String arg1_10id=  request.getParameter("arg143");
            java.lang.String arg1_10idTemp = null;
        if(!arg1_10id.equals("")){
         arg1_10idTemp  = arg1_10id;
        }
        sampleControladorPaquetePublishProxyid.agregarEspectaculo(arg0_9idTemp,arg1_10idTemp);
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