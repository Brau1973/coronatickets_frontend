<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorPlataformaPublishProxyid" scope="session" class="publicadores.ControladorPlataformaPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorPlataformaPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorPlataformaPublishProxyid.getEndpoint();
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
        sampleControladorPlataformaPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorPlataformaPublish getControladorPlataformaPublish10mtemp = sampleControladorPlataformaPublishProxyid.getControladorPlataformaPublish();
if(getControladorPlataformaPublish10mtemp == null){
%>
<%=getControladorPlataformaPublish10mtemp %>
<%
}else{
        if(getControladorPlataformaPublish10mtemp!= null){
        String tempreturnp11 = getControladorPlataformaPublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        publicadores.DtPlataforma[] listarPlataformas13mtemp = sampleControladorPlataformaPublishProxyid.listarPlataformas();
if(listarPlataformas13mtemp == null){
%>
<%=listarPlataformas13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarPlataformas13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarPlataformas13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
        java.lang.String[] listarPlataformasStr16mtemp = sampleControladorPlataformaPublishProxyid.listarPlataformasStr();
if(listarPlataformasStr16mtemp == null){
%>
<%=listarPlataformasStr16mtemp %>
<%
}else{
        String tempreturnp17 = null;
        if(listarPlataformasStr16mtemp != null){
        java.util.List listreturnp17= java.util.Arrays.asList(listarPlataformasStr16mtemp);
        tempreturnp17 = listreturnp17.toString();
        }
        %>
        <%=tempreturnp17%>
        <%
}
break;
case 19:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg028");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.Plataforma buscarPlataforma19mtemp = sampleControladorPlataformaPublishProxyid.buscarPlataforma(arg0_1idTemp);
if(buscarPlataforma19mtemp == null){
%>
<%=buscarPlataforma19mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(buscarPlataforma19mtemp != null){
java.lang.String typedescripcion22 = buscarPlataforma19mtemp.getDescripcion();
        String tempResultdescripcion22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion22));
        %>
        <%= tempResultdescripcion22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(buscarPlataforma19mtemp != null){
java.lang.String typeurl24 = buscarPlataforma19mtemp.getUrl();
        String tempResulturl24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl24));
        %>
        <%= tempResulturl24 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(buscarPlataforma19mtemp != null){
java.lang.String typenombre26 = buscarPlataforma19mtemp.getNombre();
        String tempResultnombre26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre26));
        %>
        <%= tempResultnombre26 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 30:
        gotMethod = true;
        String descripcion_3id=  request.getParameter("descripcion35");
            java.lang.String descripcion_3idTemp = null;
        if(!descripcion_3id.equals("")){
         descripcion_3idTemp  = descripcion_3id;
        }
        String url_4id=  request.getParameter("url37");
            java.lang.String url_4idTemp = null;
        if(!url_4id.equals("")){
         url_4idTemp  = url_4id;
        }
        String nombre_5id=  request.getParameter("nombre39");
            java.lang.String nombre_5idTemp = null;
        if(!nombre_5id.equals("")){
         nombre_5idTemp  = nombre_5id;
        }
        %>
        <jsp:useBean id="publicadores1DtPlataforma_2id" scope="session" class="publicadores.DtPlataforma" />
        <%
        publicadores1DtPlataforma_2id.setDescripcion(descripcion_3idTemp);
        publicadores1DtPlataforma_2id.setUrl(url_4idTemp);
        publicadores1DtPlataforma_2id.setNombre(nombre_5idTemp);
        sampleControladorPlataformaPublishProxyid.altaPlataforma(publicadores1DtPlataforma_2id);
break;
case 41:
        gotMethod = true;
        String descripcion_7id=  request.getParameter("descripcion52");
            java.lang.String descripcion_7idTemp = null;
        if(!descripcion_7id.equals("")){
         descripcion_7idTemp  = descripcion_7id;
        }
        String url_8id=  request.getParameter("url54");
            java.lang.String url_8idTemp = null;
        if(!url_8id.equals("")){
         url_8idTemp  = url_8id;
        }
        String nombre_9id=  request.getParameter("nombre56");
            java.lang.String nombre_9idTemp = null;
        if(!nombre_9id.equals("")){
         nombre_9idTemp  = nombre_9id;
        }
        %>
        <jsp:useBean id="publicadores1Plataforma_6id" scope="session" class="publicadores.Plataforma" />
        <%
        publicadores1Plataforma_6id.setDescripcion(descripcion_7idTemp);
        publicadores1Plataforma_6id.setUrl(url_8idTemp);
        publicadores1Plataforma_6id.setNombre(nombre_9idTemp);
        publicadores.DtPlataforma mapEntityToDt41mtemp = sampleControladorPlataformaPublishProxyid.mapEntityToDt(publicadores1Plataforma_6id);
if(mapEntityToDt41mtemp == null){
%>
<%=mapEntityToDt41mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(mapEntityToDt41mtemp != null){
java.lang.String typedescripcion44 = mapEntityToDt41mtemp.getDescripcion();
        String tempResultdescripcion44 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion44));
        %>
        <%= tempResultdescripcion44 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(mapEntityToDt41mtemp != null){
java.lang.String typeurl46 = mapEntityToDt41mtemp.getUrl();
        String tempResulturl46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl46));
        %>
        <%= tempResulturl46 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(mapEntityToDt41mtemp != null){
java.lang.String typenombre48 = mapEntityToDt41mtemp.getNombre();
        String tempResultnombre48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre48));
        %>
        <%= tempResultnombre48 %>
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