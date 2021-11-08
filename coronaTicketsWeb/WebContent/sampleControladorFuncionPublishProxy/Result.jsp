<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorFuncionPublishProxyid" scope="session" class="publicadores.ControladorFuncionPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorFuncionPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorFuncionPublishProxyid.getEndpoint();
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
        sampleControladorFuncionPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorFuncionPublish getControladorFuncionPublish10mtemp = sampleControladorFuncionPublishProxyid.getControladorFuncionPublish();
if(getControladorFuncionPublish10mtemp == null){
%>
<%=getControladorFuncionPublish10mtemp %>
<%
}else{
        if(getControladorFuncionPublish10mtemp!= null){
        String tempreturnp11 = getControladorFuncionPublish10mtemp.toString();
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
        java.lang.String[] getFuncionesVigentesRegistradasPorEspectador13mtemp = sampleControladorFuncionPublishProxyid.getFuncionesVigentesRegistradasPorEspectador(arg0_1idTemp);
if(getFuncionesVigentesRegistradasPorEspectador13mtemp == null){
%>
<%=getFuncionesVigentesRegistradasPorEspectador13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(getFuncionesVigentesRegistradasPorEspectador13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(getFuncionesVigentesRegistradasPorEspectador13mtemp);
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
        publicadores.DtFuncion[] listarFunciones18mtemp = sampleControladorFuncionPublishProxyid.listarFunciones(arg0_2idTemp);
if(listarFunciones18mtemp == null){
%>
<%=listarFunciones18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(listarFunciones18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(listarFunciones18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 23:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg036");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.Funcion obtenerFuncion23mtemp = sampleControladorFuncionPublishProxyid.obtenerFuncion(arg0_3idTemp);
if(obtenerFuncion23mtemp == null){
%>
<%=obtenerFuncion23mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">registro:</TD>
<TD>
<%
if(obtenerFuncion23mtemp != null){
java.util.Calendar typeregistro26 = obtenerFuncion23mtemp.getRegistro();
        java.text.DateFormat dateFormatregistro26 = java.text.DateFormat.getDateInstance();
        java.util.Date dateregistro26 = typeregistro26.getTime();
        String tempResultregistro26 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatregistro26.format(dateregistro26));
        %>
        <%= tempResultregistro26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fecha:</TD>
<TD>
<%
if(obtenerFuncion23mtemp != null){
java.util.Calendar typefecha28 = obtenerFuncion23mtemp.getFecha();
        java.text.DateFormat dateFormatfecha28 = java.text.DateFormat.getDateInstance();
        java.util.Date datefecha28 = typefecha28.getTime();
        String tempResultfecha28 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfecha28.format(datefecha28));
        %>
        <%= tempResultfecha28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(obtenerFuncion23mtemp != null){
byte[] typeimagen30 = obtenerFuncion23mtemp.getImagen();
        String tempimagen30 = "[";        for(int iimagen30=0;iimagen30< typeimagen30.length;iimagen30++){
            tempimagen30 = tempimagen30 + typeimagen30[iimagen30] + ",";
        }
        int lengthimagen30 = tempimagen30.length();
        tempimagen30 = tempimagen30.substring(0,(lengthimagen30 - 1)) + "]";
        %>
        <%=tempimagen30%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(obtenerFuncion23mtemp != null){
publicadores.Time typehoraInicio32 = obtenerFuncion23mtemp.getHoraInicio();
        if(typehoraInicio32!= null){
        String temphoraInicio32 = typehoraInicio32.toString();
        %>
        <%=temphoraInicio32%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerFuncion23mtemp != null){
java.lang.String typenombre34 = obtenerFuncion23mtemp.getNombre();
        String tempResultnombre34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre34));
        %>
        <%= tempResultnombre34 %>
        <%
}%>
</TD>
</TABLE>
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