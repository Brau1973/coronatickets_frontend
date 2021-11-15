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
        String arg0_1id=  request.getParameter("arg032");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
<<<<<<< HEAD
        publicadores.Espectaculo obtenerEspectaculo13mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo(arg0_1idTemp);
if(obtenerEspectaculo13mtemp == null){
%>
<%=obtenerEspectaculo13mtemp %>
=======
        java.lang.String[] obtenerEspectaculosArtista13mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculosArtista(arg0_1idTemp);
if(obtenerEspectaculosArtista13mtemp == null){
%>
<%=obtenerEspectaculosArtista13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(obtenerEspectaculosArtista13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(obtenerEspectaculosArtista13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 18:
        gotMethod = true;
        String url_3id=  request.getParameter("url23");
            java.lang.String url_3idTemp = null;
        if(!url_3id.equals("")){
         url_3idTemp  = url_3id;
        }
        String cantMin_4id=  request.getParameter("cantMin25");
        int cantMin_4idTemp  = Integer.parseInt(cantMin_4id);
        String costo_5id=  request.getParameter("costo27");
        int costo_5idTemp  = Integer.parseInt(costo_5id);
        String descripcion_6id=  request.getParameter("descripcion29");
            java.lang.String descripcion_6idTemp = null;
        if(!descripcion_6id.equals("")){
         descripcion_6idTemp  = descripcion_6id;
        }
        String registro_7id=  request.getParameter("registro31");
            java.util.Calendar registro_7idTemp = null;
        if(!registro_7id.equals("")){
        java.text.DateFormat dateFormatregistro31 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempregistro31  = dateFormatregistro31.parse(registro_7id);
         registro_7idTemp = new java.util.GregorianCalendar();
        registro_7idTemp.setTime(dateTempregistro31);
        }
        String cantMax_8id=  request.getParameter("cantMax33");
        int cantMax_8idTemp  = Integer.parseInt(cantMax_8id);
        String artista_9id=  request.getParameter("artista35");
            java.lang.String artista_9idTemp = null;
        if(!artista_9id.equals("")){
         artista_9idTemp  = artista_9id;
        }
        String plataforma_10id=  request.getParameter("plataforma37");
            java.lang.String plataforma_10idTemp = null;
        if(!plataforma_10id.equals("")){
         plataforma_10idTemp  = plataforma_10id;
        }
        String duracion_11id=  request.getParameter("duracion39");
        int duracion_11idTemp  = Integer.parseInt(duracion_11id);
        String nombre_12id=  request.getParameter("nombre41");
            java.lang.String nombre_12idTemp = null;
        if(!nombre_12id.equals("")){
         nombre_12idTemp  = nombre_12id;
        }
        %>
        <jsp:useBean id="publicadores1DtEspectaculo_2id" scope="session" class="publicadores.DtEspectaculo" />
        <%
        publicadores1DtEspectaculo_2id.setUrl(url_3idTemp);
        publicadores1DtEspectaculo_2id.setCantMin(cantMin_4idTemp);
        publicadores1DtEspectaculo_2id.setCosto(costo_5idTemp);
        publicadores1DtEspectaculo_2id.setDescripcion(descripcion_6idTemp);
        publicadores1DtEspectaculo_2id.setRegistro(registro_7idTemp);
        publicadores1DtEspectaculo_2id.setCantMax(cantMax_8idTemp);
        publicadores1DtEspectaculo_2id.setArtista(artista_9idTemp);
        publicadores1DtEspectaculo_2id.setPlataforma(plataforma_10idTemp);
        publicadores1DtEspectaculo_2id.setDuracion(duracion_11idTemp);
        publicadores1DtEspectaculo_2id.setNombre(nombre_12idTemp);
        String arg1_13id=  request.getParameter("arg143");
            java.lang.String arg1_13idTemp = null;
        if(!arg1_13id.equals("")){
         arg1_13idTemp  = arg1_13id;
        }
        sampleControladorEspectaculoPublishProxyid.altaEspectaculo(publicadores1DtEspectaculo_2id,arg1_13idTemp);
break;
case 45:
        gotMethod = true;
        String arg0_14id=  request.getParameter("arg048");
            java.lang.String arg0_14idTemp = null;
        if(!arg0_14id.equals("")){
         arg0_14idTemp  = arg0_14id;
        }
        publicadores.DtEspectaculo[] listarEspectaculos45mtemp = sampleControladorEspectaculoPublishProxyid.listarEspectaculos(arg0_14idTemp);
if(listarEspectaculos45mtemp == null){
%>
<%=listarEspectaculos45mtemp %>
<%
}else{
        String tempreturnp46 = null;
        if(listarEspectaculos45mtemp != null){
        java.util.List listreturnp46= java.util.Arrays.asList(listarEspectaculos45mtemp);
        tempreturnp46 = listreturnp46.toString();
        }
        %>
        <%=tempreturnp46%>
        <%
}
break;
case 50:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg069");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        publicadores.Espectaculo obtenerEspectaculo50mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo(arg0_15idTemp);
if(obtenerEspectaculo50mtemp == null){
%>
<%=obtenerEspectaculo50mtemp %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
java.lang.String typeurl16 = obtenerEspectaculo13mtemp.getUrl();
        String tempResulturl16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl16));
        %>
        <%= tempResulturl16 %>
=======
if(obtenerEspectaculo50mtemp != null){
java.lang.String typeurl53 = obtenerEspectaculo50mtemp.getUrl();
        String tempResulturl53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl53));
        %>
        <%= tempResulturl53 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
%>
<%=obtenerEspectaculo13mtemp.getCosto()
=======
if(obtenerEspectaculo50mtemp != null){
%>
<%=obtenerEspectaculo50mtemp.getCosto()
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
java.lang.String typedescripcion20 = obtenerEspectaculo13mtemp.getDescripcion();
        String tempResultdescripcion20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion20));
        %>
        <%= tempResultdescripcion20 %>
=======
if(obtenerEspectaculo50mtemp != null){
java.lang.String typedescripcion57 = obtenerEspectaculo50mtemp.getDescripcion();
        String tempResultdescripcion57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion57));
        %>
        <%= tempResultdescripcion57 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">registro:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
java.util.Calendar typeregistro22 = obtenerEspectaculo13mtemp.getRegistro();
        java.text.DateFormat dateFormatregistro22 = java.text.DateFormat.getDateInstance();
        java.util.Date dateregistro22 = typeregistro22.getTime();
        String tempResultregistro22 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatregistro22.format(dateregistro22));
        %>
        <%= tempResultregistro22 %>
=======
if(obtenerEspectaculo50mtemp != null){
java.util.Calendar typeregistro59 = obtenerEspectaculo50mtemp.getRegistro();
        java.text.DateFormat dateFormatregistro59 = java.text.DateFormat.getDateInstance();
        java.util.Date dateregistro59 = typeregistro59.getTime();
        String tempResultregistro59 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatregistro59.format(dateregistro59));
        %>
        <%= tempResultregistro59 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantMinEsp:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
%>
<%=obtenerEspectaculo13mtemp.getCantMinEsp()
=======
if(obtenerEspectaculo50mtemp != null){
%>
<%=obtenerEspectaculo50mtemp.getCantMinEsp()
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracion:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
%>
<%=obtenerEspectaculo13mtemp.getDuracion()
=======
if(obtenerEspectaculo50mtemp != null){
%>
<%=obtenerEspectaculo50mtemp.getDuracion()
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantMaxEsp:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
%>
<%=obtenerEspectaculo13mtemp.getCantMaxEsp()
=======
if(obtenerEspectaculo50mtemp != null){
%>
<%=obtenerEspectaculo50mtemp.getCantMaxEsp()
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerEspectaculo13mtemp != null){
java.lang.String typenombre30 = obtenerEspectaculo13mtemp.getNombre();
        String tempResultnombre30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre30));
        %>
        <%= tempResultnombre30 %>
=======
if(obtenerEspectaculo50mtemp != null){
java.lang.String typenombre67 = obtenerEspectaculo50mtemp.getNombre();
        String tempResultnombre67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre67));
        %>
        <%= tempResultnombre67 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
</TABLE>
<%
}
break;
<<<<<<< HEAD
case 34:
        gotMethod = true;
        String url_3id=  request.getParameter("url39");
            java.lang.String url_3idTemp = null;
        if(!url_3id.equals("")){
         url_3idTemp  = url_3id;
        }
        String cantMin_4id=  request.getParameter("cantMin41");
        int cantMin_4idTemp  = Integer.parseInt(cantMin_4id);
        String costo_5id=  request.getParameter("costo43");
        int costo_5idTemp  = Integer.parseInt(costo_5id);
        String descripcion_6id=  request.getParameter("descripcion45");
            java.lang.String descripcion_6idTemp = null;
        if(!descripcion_6id.equals("")){
         descripcion_6idTemp  = descripcion_6id;
        }
        String registro_7id=  request.getParameter("registro47");
            java.util.Calendar registro_7idTemp = null;
        if(!registro_7id.equals("")){
        java.text.DateFormat dateFormatregistro47 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempregistro47  = dateFormatregistro47.parse(registro_7id);
         registro_7idTemp = new java.util.GregorianCalendar();
        registro_7idTemp.setTime(dateTempregistro47);
        }
        String cantMax_8id=  request.getParameter("cantMax49");
        int cantMax_8idTemp  = Integer.parseInt(cantMax_8id);
        String artista_9id=  request.getParameter("artista51");
            java.lang.String artista_9idTemp = null;
        if(!artista_9id.equals("")){
         artista_9idTemp  = artista_9id;
        }
        String plataforma_10id=  request.getParameter("plataforma53");
            java.lang.String plataforma_10idTemp = null;
        if(!plataforma_10id.equals("")){
         plataforma_10idTemp  = plataforma_10id;
        }
        String duracion_11id=  request.getParameter("duracion55");
        int duracion_11idTemp  = Integer.parseInt(duracion_11id);
        String nombre_12id=  request.getParameter("nombre57");
            java.lang.String nombre_12idTemp = null;
        if(!nombre_12id.equals("")){
         nombre_12idTemp  = nombre_12id;
        }
        %>
        <jsp:useBean id="publicadores1DtEspectaculo_2id" scope="session" class="publicadores.DtEspectaculo" />
        <%
        publicadores1DtEspectaculo_2id.setUrl(url_3idTemp);
        publicadores1DtEspectaculo_2id.setCantMin(cantMin_4idTemp);
        publicadores1DtEspectaculo_2id.setCosto(costo_5idTemp);
        publicadores1DtEspectaculo_2id.setDescripcion(descripcion_6idTemp);
        publicadores1DtEspectaculo_2id.setRegistro(registro_7idTemp);
        publicadores1DtEspectaculo_2id.setCantMax(cantMax_8idTemp);
        publicadores1DtEspectaculo_2id.setArtista(artista_9idTemp);
        publicadores1DtEspectaculo_2id.setPlataforma(plataforma_10idTemp);
        publicadores1DtEspectaculo_2id.setDuracion(duracion_11idTemp);
        publicadores1DtEspectaculo_2id.setNombre(nombre_12idTemp);
        String arg1_13id=  request.getParameter("arg159");
            java.lang.String arg1_13idTemp = null;
        if(!arg1_13id.equals("")){
         arg1_13idTemp  = arg1_13id;
        }
        sampleControladorEspectaculoPublishProxyid.altaEspectaculo(publicadores1DtEspectaculo_2id,arg1_13idTemp);
break;
case 61:
        gotMethod = true;
        String arg0_14id=  request.getParameter("arg064");
            java.lang.String arg0_14idTemp = null;
        if(!arg0_14id.equals("")){
         arg0_14idTemp  = arg0_14id;
        }
        java.lang.String[] obtenerEspectaculosArtista61mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculosArtista(arg0_14idTemp);
if(obtenerEspectaculosArtista61mtemp == null){
%>
<%=obtenerEspectaculosArtista61mtemp %>
<%
}else{
        String tempreturnp62 = null;
        if(obtenerEspectaculosArtista61mtemp != null){
        java.util.List listreturnp62= java.util.Arrays.asList(obtenerEspectaculosArtista61mtemp);
        tempreturnp62 = listreturnp62.toString();
        }
        %>
        <%=tempreturnp62%>
        <%
}
break;
case 66:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg069");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        publicadores.DtEspectaculo[] listarEspectaculos66mtemp = sampleControladorEspectaculoPublishProxyid.listarEspectaculos(arg0_15idTemp);
if(listarEspectaculos66mtemp == null){
%>
<%=listarEspectaculos66mtemp %>
<%
}else{
        String tempreturnp67 = null;
        if(listarEspectaculos66mtemp != null){
        java.util.List listreturnp67= java.util.Arrays.asList(listarEspectaculos66mtemp);
        tempreturnp67 = listreturnp67.toString();
        }
        %>
        <%=tempreturnp67%>
        <%
}
break;
=======
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
case 71:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg074");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
<<<<<<< HEAD
        publicadores.DtEspectaculo[] obtenerAllDtEspectaculos71mtemp = sampleControladorEspectaculoPublishProxyid.obtenerAllDtEspectaculos(arg0_16idTemp);
if(obtenerAllDtEspectaculos71mtemp == null){
%>
<%=obtenerAllDtEspectaculos71mtemp %>
<%
}else{
        String tempreturnp72 = null;
        if(obtenerAllDtEspectaculos71mtemp != null){
        java.util.List listreturnp72= java.util.Arrays.asList(obtenerAllDtEspectaculos71mtemp);
=======
        publicadores.DtFuncion[] obtenerEspectaculoFunciones71mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculoFunciones(arg0_16idTemp);
if(obtenerEspectaculoFunciones71mtemp == null){
%>
<%=obtenerEspectaculoFunciones71mtemp %>
<%
}else{
        String tempreturnp72 = null;
        if(obtenerEspectaculoFunciones71mtemp != null){
        java.util.List listreturnp72= java.util.Arrays.asList(obtenerEspectaculoFunciones71mtemp);
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
        publicadores.DtFuncion[] obtenerEspectaculoFunciones76mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculoFunciones(arg0_17idTemp);
if(obtenerEspectaculoFunciones76mtemp == null){
%>
<%=obtenerEspectaculoFunciones76mtemp %>
<%
}else{
        String tempreturnp77 = null;
        if(obtenerEspectaculoFunciones76mtemp != null){
        java.util.List listreturnp77= java.util.Arrays.asList(obtenerEspectaculoFunciones76mtemp);
=======
        publicadores.Espectaculo[] obtenerEspectaculo276mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo2(arg0_17idTemp);
if(obtenerEspectaculo276mtemp == null){
%>
<%=obtenerEspectaculo276mtemp %>
<%
}else{
        String tempreturnp77 = null;
        if(obtenerEspectaculo276mtemp != null){
        java.util.List listreturnp77= java.util.Arrays.asList(obtenerEspectaculo276mtemp);
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        tempreturnp77 = listreturnp77.toString();
        }
        %>
        <%=tempreturnp77%>
        <%
}
break;
case 81:
        gotMethod = true;
        String arg0_18id=  request.getParameter("arg084");
            java.lang.String arg0_18idTemp = null;
        if(!arg0_18id.equals("")){
         arg0_18idTemp  = arg0_18id;
        }
<<<<<<< HEAD
        publicadores.DtPaqueteEspectaculo[] obtenerEspectaculoPaquetes81mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculoPaquetes(arg0_18idTemp);
if(obtenerEspectaculoPaquetes81mtemp == null){
%>
<%=obtenerEspectaculoPaquetes81mtemp %>
<%
}else{
        String tempreturnp82 = null;
        if(obtenerEspectaculoPaquetes81mtemp != null){
        java.util.List listreturnp82= java.util.Arrays.asList(obtenerEspectaculoPaquetes81mtemp);
=======
        publicadores.DtEspectaculo[] obtenerAllDtEspectaculos81mtemp = sampleControladorEspectaculoPublishProxyid.obtenerAllDtEspectaculos(arg0_18idTemp);
if(obtenerAllDtEspectaculos81mtemp == null){
%>
<%=obtenerAllDtEspectaculos81mtemp %>
<%
}else{
        String tempreturnp82 = null;
        if(obtenerAllDtEspectaculos81mtemp != null){
        java.util.List listreturnp82= java.util.Arrays.asList(obtenerAllDtEspectaculos81mtemp);
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        tempreturnp82 = listreturnp82.toString();
        }
        %>
        <%=tempreturnp82%>
        <%
}
break;
case 86:
        gotMethod = true;
        String arg0_19id=  request.getParameter("arg089");
            java.lang.String arg0_19idTemp = null;
        if(!arg0_19id.equals("")){
         arg0_19idTemp  = arg0_19id;
        }
<<<<<<< HEAD
        publicadores.Espectaculo[] obtenerEspectaculo286mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculo2(arg0_19idTemp);
if(obtenerEspectaculo286mtemp == null){
%>
<%=obtenerEspectaculo286mtemp %>
<%
}else{
        String tempreturnp87 = null;
        if(obtenerEspectaculo286mtemp != null){
        java.util.List listreturnp87= java.util.Arrays.asList(obtenerEspectaculo286mtemp);
=======
        publicadores.DtPaqueteEspectaculo[] obtenerEspectaculoPaquetes86mtemp = sampleControladorEspectaculoPublishProxyid.obtenerEspectaculoPaquetes(arg0_19idTemp);
if(obtenerEspectaculoPaquetes86mtemp == null){
%>
<%=obtenerEspectaculoPaquetes86mtemp %>
<%
}else{
        String tempreturnp87 = null;
        if(obtenerEspectaculoPaquetes86mtemp != null){
        java.util.List listreturnp87= java.util.Arrays.asList(obtenerEspectaculoPaquetes86mtemp);
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        tempreturnp87 = listreturnp87.toString();
        }
        %>
        <%=tempreturnp87%>
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