<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorEspectaculoPublishProxyid" scope="session" class="publicadores.ControladorEspectaculoPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorEspectaculoPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorEspectaculoPublishProxyid.getEndpoint();
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
        sampleControladorEspectaculoPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorEspectaculoPublish getControladorEspectaculoPublish10mtemp = sampleControladorEspectaculoPublishProxyid.getControladorEspectaculoPublish();
if(getControladorEspectaculoPublish10mtemp == null){
%>
<%=getControladorEspectaculoPublish10mtemp %>
<%
}else{
        if(getControladorEspectaculoPublish10mtemp!= null){
        String tempreturnp11 = getControladorEspectaculoPublish10mtemp.toString();
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
        publicadores.DtEspectaculo[] listarEspectaculos13mtemp = sampleControladorEspectaculoPublishProxyid.listarEspectaculos(arg0_1idTemp);
if(listarEspectaculos13mtemp == null){
%>
<%=listarEspectaculos13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarEspectaculos13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarEspectaculos13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 18:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg021");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        java.lang.String[] obtenerEspectaculosArtista18mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculosArtista(arg0_2idTemp);
if(obtenerEspectaculosArtista18mtemp == null){
%>
<%=obtenerEspectaculosArtista18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(obtenerEspectaculosArtista18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(obtenerEspectaculosArtista18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 23:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg042");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.Espectaculo obtenerEspectaculo23mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo(arg0_3idTemp);
if(obtenerEspectaculo23mtemp == null){
%>
<%=obtenerEspectaculo23mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
java.lang.String typeurl26 = obtenerEspectaculo23mtemp.getUrl();
        String tempResulturl26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl26));
        %>
        <%= tempResulturl26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
%>
<%=obtenerEspectaculo23mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
java.lang.String typedescripcion30 = obtenerEspectaculo23mtemp.getDescripcion();
        String tempResultdescripcion30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion30));
        %>
        <%= tempResultdescripcion30 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">registro:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
java.util.Calendar typeregistro32 = obtenerEspectaculo23mtemp.getRegistro();
        java.text.DateFormat dateFormatregistro32 = java.text.DateFormat.getDateInstance();
        java.util.Date dateregistro32 = typeregistro32.getTime();
        String tempResultregistro32 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatregistro32.format(dateregistro32));
        %>
        <%= tempResultregistro32 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantMinEsp:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
%>
<%=obtenerEspectaculo23mtemp.getCantMinEsp()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
%>
<%=obtenerEspectaculo23mtemp.getDuracion()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantMaxEsp:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
%>
<%=obtenerEspectaculo23mtemp.getCantMaxEsp()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerEspectaculo23mtemp != null){
java.lang.String typenombre40 = obtenerEspectaculo23mtemp.getNombre();
        String tempResultnombre40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre40));
        %>
        <%= tempResultnombre40 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 44:
        gotMethod = true;
        String url_5id=  request.getParameter("url49");
            java.lang.String url_5idTemp = null;
        if(!url_5id.equals("")){
         url_5idTemp  = url_5id;
        }
        String cantMin_6id=  request.getParameter("cantMin51");
        int cantMin_6idTemp  = Integer.parseInt(cantMin_6id);
        String costo_7id=  request.getParameter("costo53");
        int costo_7idTemp  = Integer.parseInt(costo_7id);
        String descripcion_8id=  request.getParameter("descripcion55");
            java.lang.String descripcion_8idTemp = null;
        if(!descripcion_8id.equals("")){
         descripcion_8idTemp  = descripcion_8id;
        }
        String registro_9id=  request.getParameter("registro57");
            java.util.Calendar registro_9idTemp = null;
        if(!registro_9id.equals("")){
        java.text.DateFormat dateFormatregistro57 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempregistro57  = dateFormatregistro57.parse(registro_9id);
         registro_9idTemp = new java.util.GregorianCalendar();
        registro_9idTemp.setTime(dateTempregistro57);
        }
        String cantMax_10id=  request.getParameter("cantMax59");
        int cantMax_10idTemp  = Integer.parseInt(cantMax_10id);
        String artista_11id=  request.getParameter("artista61");
            java.lang.String artista_11idTemp = null;
        if(!artista_11id.equals("")){
         artista_11idTemp  = artista_11id;
        }
        String plataforma_12id=  request.getParameter("plataforma63");
            java.lang.String plataforma_12idTemp = null;
        if(!plataforma_12id.equals("")){
         plataforma_12idTemp  = plataforma_12id;
        }
        String duracion_13id=  request.getParameter("duracion65");
        int duracion_13idTemp  = Integer.parseInt(duracion_13id);
        String nombre_14id=  request.getParameter("nombre67");
            java.lang.String nombre_14idTemp = null;
        if(!nombre_14id.equals("")){
         nombre_14idTemp  = nombre_14id;
        }
        %>
        <jsp:useBean id="publicadores1DtEspectaculo_4id" scope="session" class="publicadores.DtEspectaculo" />
        <%
        publicadores1DtEspectaculo_4id.setUrl(url_5idTemp);
        publicadores1DtEspectaculo_4id.setCantMin(cantMin_6idTemp);
        publicadores1DtEspectaculo_4id.setCosto(costo_7idTemp);
        publicadores1DtEspectaculo_4id.setDescripcion(descripcion_8idTemp);
        publicadores1DtEspectaculo_4id.setRegistro(registro_9idTemp);
        publicadores1DtEspectaculo_4id.setCantMax(cantMax_10idTemp);
        publicadores1DtEspectaculo_4id.setArtista(artista_11idTemp);
        publicadores1DtEspectaculo_4id.setPlataforma(plataforma_12idTemp);
        publicadores1DtEspectaculo_4id.setDuracion(duracion_13idTemp);
        publicadores1DtEspectaculo_4id.setNombre(nombre_14idTemp);
        String arg1_15id=  request.getParameter("arg169");
            java.lang.String arg1_15idTemp = null;
        if(!arg1_15id.equals("")){
         arg1_15idTemp  = arg1_15id;
        }
        sampleControladorEspectaculoPublishProxyid.altaEspectaculo(publicadores1DtEspectaculo_4id,arg1_15idTemp);
break;
case 71:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg074");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
        publicadores.Espectaculo[] obtenerEspectaculo271mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo2(arg0_16idTemp);
if(obtenerEspectaculo271mtemp == null){
%>
<%=obtenerEspectaculo271mtemp %>
<%
}else{
        String tempreturnp72 = null;
        if(obtenerEspectaculo271mtemp != null){
        java.util.List listreturnp72= java.util.Arrays.asList(obtenerEspectaculo271mtemp);
        tempreturnp72 = listreturnp72.toString();
        }
        %>
        <%=tempreturnp72%>
        <%
}
break;
case 76:
        gotMethod = true;
        String arg0_17id=  request.getParameter("arg079");
            java.lang.String arg0_17idTemp = null;
        if(!arg0_17id.equals("")){
         arg0_17idTemp  = arg0_17id;
        }
        publicadores.DtEspectaculo[] obtenerAllDtEspectaculos76mtemp = sampleControladorEspectaculoPublishProxyid.obtenerAllDtEspectaculos(arg0_17idTemp);
if(obtenerAllDtEspectaculos76mtemp == null){
%>
<%=obtenerAllDtEspectaculos76mtemp %>
<%
}else{
        String tempreturnp77 = null;
        if(obtenerAllDtEspectaculos76mtemp != null){
        java.util.List listreturnp77= java.util.Arrays.asList(obtenerAllDtEspectaculos76mtemp);
        tempreturnp77 = listreturnp77.toString();
        }
        %>
        <%=tempreturnp77%>
        <%
}
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