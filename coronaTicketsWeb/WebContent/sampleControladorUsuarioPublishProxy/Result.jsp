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
        String arg0_1id=  request.getParameter("arg030");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.Usuario obtenerUsuario13mtemp = sampleControladorUsuarioPublishProxyid.obtenerUsuario(arg0_1idTemp);
if(obtenerUsuario13mtemp == null){
%>
<%=obtenerUsuario13mtemp %>
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
if(obtenerUsuario13mtemp != null){
java.util.Calendar typefNacimiento16 = obtenerUsuario13mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento16 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento16 = typefNacimiento16.getTime();
        String tempResultfNacimiento16 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento16.format(datefNacimiento16));
        %>
        <%= tempResultfNacimiento16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
java.lang.String typenickname18 = obtenerUsuario13mtemp.getNickname();
        String tempResultnickname18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname18));
        %>
        <%= tempResultnickname18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
java.lang.String typeemail20 = obtenerUsuario13mtemp.getEmail();
        String tempResultemail20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail20));
        %>
        <%= tempResultemail20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
java.lang.String typenombre22 = obtenerUsuario13mtemp.getNombre();
        String tempResultnombre22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre22));
        %>
        <%= tempResultnombre22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
byte[] typeimagen24 = obtenerUsuario13mtemp.getImagen();
        String tempimagen24 = "[";        for(int iimagen24=0;iimagen24< typeimagen24.length;iimagen24++){
            tempimagen24 = tempimagen24 + typeimagen24[iimagen24] + ",";
        }
        int lengthimagen24 = tempimagen24.length();
        tempimagen24 = tempimagen24.substring(0,(lengthimagen24 - 1)) + "]";
        %>
        <%=tempimagen24%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
java.lang.String typeapellido26 = obtenerUsuario13mtemp.getApellido();
        String tempResultapellido26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido26));
        %>
        <%= tempResultapellido26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(obtenerUsuario13mtemp != null){
java.lang.String typecontrasenia28 = obtenerUsuario13mtemp.getContrasenia();
        String tempResultcontrasenia28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia28));
        %>
        <%= tempResultcontrasenia28 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 32:
        gotMethod = true;
        java.lang.String[] listarNicknameArtistas32mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas32mtemp == null){
%>
<%=listarNicknameArtistas32mtemp %>
<%
}else{
        String tempreturnp33 = null;
        if(listarNicknameArtistas32mtemp != null){
        java.util.List listreturnp33= java.util.Arrays.asList(listarNicknameArtistas32mtemp);
        tempreturnp33 = listreturnp33.toString();
        }
        %>
        <%=tempreturnp33%>
        <%
}
break;
case 35:
        gotMethod = true;
        java.lang.String[] listarNicknameEspectadores35mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameEspectadores();
if(listarNicknameEspectadores35mtemp == null){
%>
<%=listarNicknameEspectadores35mtemp %>
<%
}else{
        String tempreturnp36 = null;
        if(listarNicknameEspectadores35mtemp != null){
        java.util.List listreturnp36= java.util.Arrays.asList(listarNicknameEspectadores35mtemp);
        tempreturnp36 = listreturnp36.toString();
        }
        %>
        <%=tempreturnp36%>
        <%
}
break;
case 38:
        gotMethod = true;
        java.lang.String[] listarNicknameUsuarios38mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuarios();
if(listarNicknameUsuarios38mtemp == null){
%>
<%=listarNicknameUsuarios38mtemp %>
<%
}else{
        String tempreturnp39 = null;
        if(listarNicknameUsuarios38mtemp != null){
        java.util.List listreturnp39= java.util.Arrays.asList(listarNicknameUsuarios38mtemp);
        tempreturnp39 = listreturnp39.toString();
        }
        %>
        <%=tempreturnp39%>
        <%
}
break;
case 41:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1DtEspectador_2id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_2id);
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
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typenombre55 = getLoginUsuarioMail46mtemp.getNombre();
        String tempResultnombre55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre55));
        %>
        <%= tempResultnombre55 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuarioMail46mtemp != null){
byte[] typeimagen57 = getLoginUsuarioMail46mtemp.getImagen();
        String tempimagen57 = "[";        for(int iimagen57=0;iimagen57< typeimagen57.length;iimagen57++){
            tempimagen57 = tempimagen57 + typeimagen57[iimagen57] + ",";
        }
        int lengthimagen57 = tempimagen57.length();
        tempimagen57 = tempimagen57.substring(0,(lengthimagen57 - 1)) + "]";
        %>
        <%=tempimagen57%>
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
        String arg1_5id=  request.getParameter("arg170");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        sampleControladorUsuarioPublishProxyid.dejarDeSeguirUsuario(arg0_4idTemp,arg1_5idTemp);
break;
case 72:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg075");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        java.lang.String[] listarNicknameUsuariosSeguidos72mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosSeguidos(arg0_6idTemp);
if(listarNicknameUsuariosSeguidos72mtemp == null){
%>
<%=listarNicknameUsuariosSeguidos72mtemp %>
<%
}else{
        String tempreturnp73 = null;
        if(listarNicknameUsuariosSeguidos72mtemp != null){
        java.util.List listreturnp73= java.util.Arrays.asList(listarNicknameUsuariosSeguidos72mtemp);
        tempreturnp73 = listreturnp73.toString();
        }
        %>
        <%=tempreturnp73%>
        <%
}
break;
case 77:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg080");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        java.lang.String[] listarNicknameUsuariosNoSeguidos77mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosNoSeguidos(arg0_7idTemp);
if(listarNicknameUsuariosNoSeguidos77mtemp == null){
%>
<%=listarNicknameUsuariosNoSeguidos77mtemp %>
<%
}else{
        String tempreturnp78 = null;
        if(listarNicknameUsuariosNoSeguidos77mtemp != null){
        java.util.List listreturnp78= java.util.Arrays.asList(listarNicknameUsuariosNoSeguidos77mtemp);
        tempreturnp78 = listreturnp78.toString();
        }
        %>
        <%=tempreturnp78%>
        <%
}
break;
case 82:
        gotMethod = true;
        String descripcion_9id=  request.getParameter("descripcion87");
            java.lang.String descripcion_9idTemp = null;
        if(!descripcion_9id.equals("")){
         descripcion_9idTemp  = descripcion_9id;
        }
        String link_10id=  request.getParameter("link89");
            java.lang.String link_10idTemp = null;
        if(!link_10id.equals("")){
         link_10idTemp  = link_10id;
        }
        String biografia_11id=  request.getParameter("biografia91");
            java.lang.String biografia_11idTemp = null;
        if(!biografia_11id.equals("")){
         biografia_11idTemp  = biografia_11id;
        }
        %>
        <jsp:useBean id="publicadores1DtArtista_8id" scope="session" class="publicadores.DtArtista" />
        <%
        publicadores1DtArtista_8id.setDescripcion(descripcion_9idTemp);
        publicadores1DtArtista_8id.setLink(link_10idTemp);
        publicadores1DtArtista_8id.setBiografia(biografia_11idTemp);
        sampleControladorUsuarioPublishProxyid.altaDtArtista(publicadores1DtArtista_8id);
break;
case 93:
        gotMethod = true;
        String arg0_12id=  request.getParameter("arg0110");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        publicadores.DtUsuario getLoginUsuario93mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_12idTemp);
if(getLoginUsuario93mtemp == null){
%>
<%=getLoginUsuario93mtemp %>
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
if(getLoginUsuario93mtemp != null){
java.util.Calendar typefNacimiento96 = getLoginUsuario93mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento96 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento96 = typefNacimiento96.getTime();
        String tempResultfNacimiento96 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento96.format(datefNacimiento96));
        %>
        <%= tempResultfNacimiento96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
java.lang.String typenickname98 = getLoginUsuario93mtemp.getNickname();
        String tempResultnickname98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname98));
        %>
        <%= tempResultnickname98 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
java.lang.String typeemail100 = getLoginUsuario93mtemp.getEmail();
        String tempResultemail100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail100));
        %>
        <%= tempResultemail100 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
java.lang.String typenombre102 = getLoginUsuario93mtemp.getNombre();
        String tempResultnombre102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre102));
        %>
        <%= tempResultnombre102 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
byte[] typeimagen104 = getLoginUsuario93mtemp.getImagen();
        String tempimagen104 = "[";        for(int iimagen104=0;iimagen104< typeimagen104.length;iimagen104++){
            tempimagen104 = tempimagen104 + typeimagen104[iimagen104] + ",";
        }
        int lengthimagen104 = tempimagen104.length();
        tempimagen104 = tempimagen104.substring(0,(lengthimagen104 - 1)) + "]";
        %>
        <%=tempimagen104%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
java.lang.String typeapellido106 = getLoginUsuario93mtemp.getApellido();
        String tempResultapellido106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido106));
        %>
        <%= tempResultapellido106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuario93mtemp != null){
java.lang.String typecontrasenia108 = getLoginUsuario93mtemp.getContrasenia();
        String tempResultcontrasenia108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia108));
        %>
        <%= tempResultcontrasenia108 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 112:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0121");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        publicadores.DtArtista getLoginArtista112mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_13idTemp);
if(getLoginArtista112mtemp == null){
%>
<%=getLoginArtista112mtemp %>
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
if(getLoginArtista112mtemp != null){
java.lang.String typedescripcion115 = getLoginArtista112mtemp.getDescripcion();
        String tempResultdescripcion115 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion115));
        %>
        <%= tempResultdescripcion115 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista112mtemp != null){
java.lang.String typelink117 = getLoginArtista112mtemp.getLink();
        String tempResultlink117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink117));
        %>
        <%= tempResultlink117 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista112mtemp != null){
java.lang.String typebiografia119 = getLoginArtista112mtemp.getBiografia();
        String tempResultbiografia119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia119));
        %>
        <%= tempResultbiografia119 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 123:
        gotMethod = true;
        String arg0_14id=  request.getParameter("arg0126");
            java.lang.String arg0_14idTemp = null;
        if(!arg0_14id.equals("")){
         arg0_14idTemp  = arg0_14id;
        }
        boolean emailRepetido123mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_14idTemp);
        String tempResultreturnp124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido123mtemp));
        %>
        <%= tempResultreturnp124 %>
        <%
break;
case 128:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg0131");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        String arg1_16id=  request.getParameter("arg1133");
            java.lang.String arg1_16idTemp = null;
        if(!arg1_16id.equals("")){
         arg1_16idTemp  = arg1_16id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_15idTemp,arg1_16idTemp);
break;
case 135:
        gotMethod = true;
        String arg0_17id=  request.getParameter("arg0144");
            java.lang.String arg0_17idTemp = null;
        if(!arg0_17id.equals("")){
         arg0_17idTemp  = arg0_17id;
        }
        publicadores.Artista obtenerArtista135mtemp = sampleControladorUsuarioPublishProxyid.obtenerArtista(arg0_17idTemp);
if(obtenerArtista135mtemp == null){
%>
<%=obtenerArtista135mtemp %>
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
if(obtenerArtista135mtemp != null){
java.lang.String typedescripcion138 = obtenerArtista135mtemp.getDescripcion();
        String tempResultdescripcion138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion138));
        %>
        <%= tempResultdescripcion138 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(obtenerArtista135mtemp != null){
java.lang.String typelink140 = obtenerArtista135mtemp.getLink();
        String tempResultlink140 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink140));
        %>
        <%= tempResultlink140 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(obtenerArtista135mtemp != null){
java.lang.String typebiografia142 = obtenerArtista135mtemp.getBiografia();
        String tempResultbiografia142 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia142));
        %>
        <%= tempResultbiografia142 %>
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