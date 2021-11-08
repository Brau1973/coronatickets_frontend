<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorUsuarioPublishProxyid" scope="session" class="publicadores.ControladorUsuarioPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorUsuarioPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorUsuarioPublishProxyid.getEndpoint();
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
        sampleControladorUsuarioPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorUsuarioPublish getControladorUsuarioPublish10mtemp = sampleControladorUsuarioPublishProxyid.getControladorUsuarioPublish();
if(getControladorUsuarioPublish10mtemp == null){
%>
<%=getControladorUsuarioPublish10mtemp %>
<%
}else{
        if(getControladorUsuarioPublish10mtemp!= null){
        String tempreturnp11 = getControladorUsuarioPublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        java.lang.String[] listarNicknameUsuarios13mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuarios();
if(listarNicknameUsuarios13mtemp == null){
%>
<%=listarNicknameUsuarios13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarNicknameUsuarios13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarNicknameUsuarios13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
        java.lang.String[] listarNicknameArtistas16mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas16mtemp == null){
%>
<%=listarNicknameArtistas16mtemp %>
<%
}else{
        String tempreturnp17 = null;
        if(listarNicknameArtistas16mtemp != null){
        java.util.List listreturnp17= java.util.Arrays.asList(listarNicknameArtistas16mtemp);
        tempreturnp17 = listreturnp17.toString();
        }
        %>
        <%=tempreturnp17%>
        <%
}
break;
case 19:
        gotMethod = true;
        java.lang.String[] listarNicknameEspectadores19mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameEspectadores();
if(listarNicknameEspectadores19mtemp == null){
%>
<%=listarNicknameEspectadores19mtemp %>
<%
}else{
        String tempreturnp20 = null;
        if(listarNicknameEspectadores19mtemp != null){
        java.util.List listreturnp20= java.util.Arrays.asList(listarNicknameEspectadores19mtemp);
        tempreturnp20 = listreturnp20.toString();
        }
        %>
        <%=tempreturnp20%>
        <%
}
break;
case 22:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg039");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.Usuario obtenerUsuario22mtemp = sampleControladorUsuarioPublishProxyid.obtenerUsuario(arg0_1idTemp);
if(obtenerUsuario22mtemp == null){
%>
<%=obtenerUsuario22mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fNacimiento:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.util.Calendar typefNacimiento25 = obtenerUsuario22mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento25 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento25 = typefNacimiento25.getTime();
        String tempResultfNacimiento25 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento25.format(datefNacimiento25));
        %>
        <%= tempResultfNacimiento25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.lang.String typenickname27 = obtenerUsuario22mtemp.getNickname();
        String tempResultnickname27 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname27));
        %>
        <%= tempResultnickname27 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.lang.String typeemail29 = obtenerUsuario22mtemp.getEmail();
        String tempResultemail29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail29));
        %>
        <%= tempResultemail29 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.lang.String typenombre31 = obtenerUsuario22mtemp.getNombre();
        String tempResultnombre31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre31));
        %>
        <%= tempResultnombre31 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
byte[] typeimagen33 = obtenerUsuario22mtemp.getImagen();
        String tempimagen33 = "[";        for(int iimagen33=0;iimagen33< typeimagen33.length;iimagen33++){
            tempimagen33 = tempimagen33 + typeimagen33[iimagen33] + ",";
        }
        int lengthimagen33 = tempimagen33.length();
        tempimagen33 = tempimagen33.substring(0,(lengthimagen33 - 1)) + "]";
        %>
        <%=tempimagen33%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.lang.String typeapellido35 = obtenerUsuario22mtemp.getApellido();
        String tempResultapellido35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido35));
        %>
        <%= tempResultapellido35 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(obtenerUsuario22mtemp != null){
java.lang.String typecontrasenia37 = obtenerUsuario22mtemp.getContrasenia();
        String tempResultcontrasenia37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia37));
        %>
        <%= tempResultcontrasenia37 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 41:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg044");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        java.lang.String[] listarNicknameUsuariosNoSeguidos41mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosNoSeguidos(arg0_2idTemp);
if(listarNicknameUsuariosNoSeguidos41mtemp == null){
%>
<%=listarNicknameUsuariosNoSeguidos41mtemp %>
<%
}else{
        String tempreturnp42 = null;
        if(listarNicknameUsuariosNoSeguidos41mtemp != null){
        java.util.List listreturnp42= java.util.Arrays.asList(listarNicknameUsuariosNoSeguidos41mtemp);
        tempreturnp42 = listreturnp42.toString();
        }
        %>
        <%=tempreturnp42%>
        <%
}
break;
case 46:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg063");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.DtUsuario getLoginUsuarioMail46mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuarioMail(arg0_3idTemp);
if(getLoginUsuarioMail46mtemp == null){
%>
<%=getLoginUsuarioMail46mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fNacimiento:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.util.Calendar typefNacimiento49 = getLoginUsuarioMail46mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento49 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento49 = typefNacimiento49.getTime();
        String tempResultfNacimiento49 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento49.format(datefNacimiento49));
        %>
        <%= tempResultfNacimiento49 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typenickname51 = getLoginUsuarioMail46mtemp.getNickname();
        String tempResultnickname51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname51));
        %>
        <%= tempResultnickname51 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typeemail53 = getLoginUsuarioMail46mtemp.getEmail();
        String tempResultemail53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail53));
        %>
        <%= tempResultemail53 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
byte[] typeimagen55 = getLoginUsuarioMail46mtemp.getImagen();
        String tempimagen55 = "[";        for(int iimagen55=0;iimagen55< typeimagen55.length;iimagen55++){
            tempimagen55 = tempimagen55 + typeimagen55[iimagen55] + ",";
        }
        int lengthimagen55 = tempimagen55.length();
        tempimagen55 = tempimagen55.substring(0,(lengthimagen55 - 1)) + "]";
        %>
        <%=tempimagen55%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typenombre57 = getLoginUsuarioMail46mtemp.getNombre();
        String tempResultnombre57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre57));
        %>
        <%= tempResultnombre57 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typeapellido59 = getLoginUsuarioMail46mtemp.getApellido();
        String tempResultapellido59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido59));
        %>
        <%= tempResultapellido59 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typecontrasenia61 = getLoginUsuarioMail46mtemp.getContrasenia();
        String tempResultcontrasenia61 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia61));
        %>
        <%= tempResultcontrasenia61 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 65:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg068");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        java.lang.String[] listarNicknameUsuariosSeguidos65mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosSeguidos(arg0_4idTemp);
if(listarNicknameUsuariosSeguidos65mtemp == null){
%>
<%=listarNicknameUsuariosSeguidos65mtemp %>
<%
}else{
        String tempreturnp66 = null;
        if(listarNicknameUsuariosSeguidos65mtemp != null){
        java.util.List listreturnp66= java.util.Arrays.asList(listarNicknameUsuariosSeguidos65mtemp);
        tempreturnp66 = listreturnp66.toString();
        }
        %>
        <%=tempreturnp66%>
        <%
}
break;
case 70:
        gotMethod = true;
        String arg0_5id=  request.getParameter("arg073");
            java.lang.String arg0_5idTemp = null;
        if(!arg0_5id.equals("")){
         arg0_5idTemp  = arg0_5id;
        }
        String arg1_6id=  request.getParameter("arg175");
            java.lang.String arg1_6idTemp = null;
        if(!arg1_6id.equals("")){
         arg1_6idTemp  = arg1_6id;
        }
        sampleControladorUsuarioPublishProxyid.dejarDeSeguirUsuario(arg0_5idTemp,arg1_6idTemp);
break;
case 77:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg080");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        String arg1_8id=  request.getParameter("arg182");
            java.lang.String arg1_8idTemp = null;
        if(!arg1_8id.equals("")){
         arg1_8idTemp  = arg1_8id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_7idTemp,arg1_8idTemp);
break;
case 84:
        gotMethod = true;
        String arg0_9id=  request.getParameter("arg0101");
            java.lang.String arg0_9idTemp = null;
        if(!arg0_9id.equals("")){
         arg0_9idTemp  = arg0_9id;
        }
        publicadores.DtUsuario getLoginUsuario84mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_9idTemp);
if(getLoginUsuario84mtemp == null){
%>
<%=getLoginUsuario84mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fNacimiento:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.util.Calendar typefNacimiento87 = getLoginUsuario84mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento87 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento87 = typefNacimiento87.getTime();
        String tempResultfNacimiento87 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento87.format(datefNacimiento87));
        %>
        <%= tempResultfNacimiento87 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.lang.String typenickname89 = getLoginUsuario84mtemp.getNickname();
        String tempResultnickname89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname89));
        %>
        <%= tempResultnickname89 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.lang.String typeemail91 = getLoginUsuario84mtemp.getEmail();
        String tempResultemail91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail91));
        %>
        <%= tempResultemail91 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
byte[] typeimagen93 = getLoginUsuario84mtemp.getImagen();
        String tempimagen93 = "[";        for(int iimagen93=0;iimagen93< typeimagen93.length;iimagen93++){
            tempimagen93 = tempimagen93 + typeimagen93[iimagen93] + ",";
        }
        int lengthimagen93 = tempimagen93.length();
        tempimagen93 = tempimagen93.substring(0,(lengthimagen93 - 1)) + "]";
        %>
        <%=tempimagen93%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.lang.String typenombre95 = getLoginUsuario84mtemp.getNombre();
        String tempResultnombre95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre95));
        %>
        <%= tempResultnombre95 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.lang.String typeapellido97 = getLoginUsuario84mtemp.getApellido();
        String tempResultapellido97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido97));
        %>
        <%= tempResultapellido97 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuario84mtemp != null){
java.lang.String typecontrasenia99 = getLoginUsuario84mtemp.getContrasenia();
        String tempResultcontrasenia99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia99));
        %>
        <%= tempResultcontrasenia99 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 103:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg0112");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        publicadores.DtArtista getLoginArtista103mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_10idTemp);
if(getLoginArtista103mtemp == null){
%>
<%=getLoginArtista103mtemp %>
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
if(getLoginArtista103mtemp != null){
java.lang.String typedescripcion106 = getLoginArtista103mtemp.getDescripcion();
        String tempResultdescripcion106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion106));
        %>
        <%= tempResultdescripcion106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista103mtemp != null){
java.lang.String typelink108 = getLoginArtista103mtemp.getLink();
        String tempResultlink108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink108));
        %>
        <%= tempResultlink108 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista103mtemp != null){
java.lang.String typebiografia110 = getLoginArtista103mtemp.getBiografia();
        String tempResultbiografia110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia110));
        %>
        <%= tempResultbiografia110 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 114:
        gotMethod = true;
        String descripcion_12id=  request.getParameter("descripcion119");
            java.lang.String descripcion_12idTemp = null;
        if(!descripcion_12id.equals("")){
         descripcion_12idTemp  = descripcion_12id;
        }
        String link_13id=  request.getParameter("link121");
            java.lang.String link_13idTemp = null;
        if(!link_13id.equals("")){
         link_13idTemp  = link_13id;
        }
        String biografia_14id=  request.getParameter("biografia123");
            java.lang.String biografia_14idTemp = null;
        if(!biografia_14id.equals("")){
         biografia_14idTemp  = biografia_14id;
        }
        %>
        <jsp:useBean id="publicadores1DtArtista_11id" scope="session" class="publicadores.DtArtista" />
        <%
        publicadores1DtArtista_11id.setDescripcion(descripcion_12idTemp);
        publicadores1DtArtista_11id.setLink(link_13idTemp);
        publicadores1DtArtista_11id.setBiografia(biografia_14idTemp);
        sampleControladorUsuarioPublishProxyid.altaDtArtista(publicadores1DtArtista_11id);
break;
case 125:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg0128");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        boolean emailRepetido125mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_15idTemp);
        String tempResultreturnp126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido125mtemp));
        %>
        <%= tempResultreturnp126 %>
        <%
break;
case 130:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg0139");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
        publicadores.Artista obtenerArtista130mtemp = sampleControladorUsuarioPublishProxyid.obtenerArtista(arg0_16idTemp);
if(obtenerArtista130mtemp == null){
%>
<%=obtenerArtista130mtemp %>
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
if(obtenerArtista130mtemp != null){
java.lang.String typedescripcion133 = obtenerArtista130mtemp.getDescripcion();
        String tempResultdescripcion133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion133));
        %>
        <%= tempResultdescripcion133 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(obtenerArtista130mtemp != null){
java.lang.String typelink135 = obtenerArtista130mtemp.getLink();
        String tempResultlink135 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink135));
        %>
        <%= tempResultlink135 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(obtenerArtista130mtemp != null){
java.lang.String typebiografia137 = obtenerArtista130mtemp.getBiografia();
        String tempResultbiografia137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia137));
        %>
        <%= tempResultbiografia137 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 141:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1DtEspectador_17id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_17id);
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