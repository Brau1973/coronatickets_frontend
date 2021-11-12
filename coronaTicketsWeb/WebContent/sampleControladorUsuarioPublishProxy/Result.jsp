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
        java.lang.String[] listarNicknameArtistas13mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas13mtemp == null){
%>
<%=listarNicknameArtistas13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarNicknameArtistas13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarNicknameArtistas13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
        java.lang.String[] listarNicknameEspectadores16mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameEspectadores();
if(listarNicknameEspectadores16mtemp == null){
%>
<%=listarNicknameEspectadores16mtemp %>
<%
}else{
        String tempreturnp17 = null;
        if(listarNicknameEspectadores16mtemp != null){
        java.util.List listreturnp17= java.util.Arrays.asList(listarNicknameEspectadores16mtemp);
        tempreturnp17 = listreturnp17.toString();
        }
        %>
        <%=tempreturnp17%>
        <%
}
break;
case 19:
        gotMethod = true;
        java.lang.String[] listarNicknameUsuarios19mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuarios();
if(listarNicknameUsuarios19mtemp == null){
%>
<%=listarNicknameUsuarios19mtemp %>
<%
}else{
        String tempreturnp20 = null;
        if(listarNicknameUsuarios19mtemp != null){
        java.util.List listreturnp20= java.util.Arrays.asList(listarNicknameUsuarios19mtemp);
        tempreturnp20 = listreturnp20.toString();
        }
        %>
        <%=tempreturnp20%>
        <%
}
break;
case 22:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1DtEspectador_1id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_1id);
break;
case 27:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg044");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.Usuario obtenerUsuario27mtemp = sampleControladorUsuarioPublishProxyid.obtenerUsuario(arg0_2idTemp);
if(obtenerUsuario27mtemp == null){
%>
<%=obtenerUsuario27mtemp %>
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
if(obtenerUsuario27mtemp != null){
java.util.Calendar typefNacimiento30 = obtenerUsuario27mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento30 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento30 = typefNacimiento30.getTime();
        String tempResultfNacimiento30 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento30.format(datefNacimiento30));
        %>
        <%= tempResultfNacimiento30 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
java.lang.String typenickname32 = obtenerUsuario27mtemp.getNickname();
        String tempResultnickname32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname32));
        %>
        <%= tempResultnickname32 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
java.lang.String typeemail34 = obtenerUsuario27mtemp.getEmail();
        String tempResultemail34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail34));
        %>
        <%= tempResultemail34 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
java.lang.String typenombre36 = obtenerUsuario27mtemp.getNombre();
        String tempResultnombre36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre36));
        %>
        <%= tempResultnombre36 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
byte[] typeimagen38 = obtenerUsuario27mtemp.getImagen();
        String tempimagen38 = "[";        for(int iimagen38=0;iimagen38< typeimagen38.length;iimagen38++){
            tempimagen38 = tempimagen38 + typeimagen38[iimagen38] + ",";
        }
        int lengthimagen38 = tempimagen38.length();
        tempimagen38 = tempimagen38.substring(0,(lengthimagen38 - 1)) + "]";
        %>
        <%=tempimagen38%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
java.lang.String typeapellido40 = obtenerUsuario27mtemp.getApellido();
        String tempResultapellido40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido40));
        %>
        <%= tempResultapellido40 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(obtenerUsuario27mtemp != null){
java.lang.String typecontrasenia42 = obtenerUsuario27mtemp.getContrasenia();
        String tempResultcontrasenia42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia42));
        %>
        <%= tempResultcontrasenia42 %>
        <%
}%>
</TD>
</TABLE>
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
        java.lang.String[] listarNicknameUsuariosNoSeguidos65mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosNoSeguidos(arg0_4idTemp);
if(listarNicknameUsuariosNoSeguidos65mtemp == null){
%>
<%=listarNicknameUsuariosNoSeguidos65mtemp %>
<%
}else{
        String tempreturnp66 = null;
        if(listarNicknameUsuariosNoSeguidos65mtemp != null){
        java.util.List listreturnp66= java.util.Arrays.asList(listarNicknameUsuariosNoSeguidos65mtemp);
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
        java.lang.String[] listarNicknameUsuariosSeguidos70mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosSeguidos(arg0_5idTemp);
if(listarNicknameUsuariosSeguidos70mtemp == null){
%>
<%=listarNicknameUsuariosSeguidos70mtemp %>
<%
}else{
        String tempreturnp71 = null;
        if(listarNicknameUsuariosSeguidos70mtemp != null){
        java.util.List listreturnp71= java.util.Arrays.asList(listarNicknameUsuariosSeguidos70mtemp);
        tempreturnp71 = listreturnp71.toString();
        }
        %>
        <%=tempreturnp71%>
        <%
}
break;
case 75:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg078");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        String arg1_7id=  request.getParameter("arg180");
            java.lang.String arg1_7idTemp = null;
        if(!arg1_7id.equals("")){
         arg1_7idTemp  = arg1_7id;
        }
        sampleControladorUsuarioPublishProxyid.dejarDeSeguirUsuario(arg0_6idTemp,arg1_7idTemp);
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
        String arg0_12id=  request.getParameter("arg096");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        String arg1_13id=  request.getParameter("arg198");
            java.lang.String arg1_13idTemp = null;
        if(!arg1_13id.equals("")){
         arg1_13idTemp  = arg1_13id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_12idTemp,arg1_13idTemp);
break;
case 100:
        gotMethod = true;
        String arg0_14id=  request.getParameter("arg0109");
            java.lang.String arg0_14idTemp = null;
        if(!arg0_14id.equals("")){
         arg0_14idTemp  = arg0_14id;
        }
        publicadores.DtArtista getLoginArtista100mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_14idTemp);
if(getLoginArtista100mtemp == null){
%>
<%=getLoginArtista100mtemp %>
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
if(getLoginArtista100mtemp != null){
java.lang.String typedescripcion103 = getLoginArtista100mtemp.getDescripcion();
        String tempResultdescripcion103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion103));
        %>
        <%= tempResultdescripcion103 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista100mtemp != null){
java.lang.String typelink105 = getLoginArtista100mtemp.getLink();
        String tempResultlink105 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink105));
        %>
        <%= tempResultlink105 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista100mtemp != null){
java.lang.String typebiografia107 = getLoginArtista100mtemp.getBiografia();
        String tempResultbiografia107 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia107));
        %>
        <%= tempResultbiografia107 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 111:
        gotMethod = true;
        String arg0_15id=  request.getParameter("arg0114");
            java.lang.String arg0_15idTemp = null;
        if(!arg0_15id.equals("")){
         arg0_15idTemp  = arg0_15id;
        }
        boolean emailRepetido111mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_15idTemp);
        String tempResultreturnp112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido111mtemp));
        %>
        <%= tempResultreturnp112 %>
        <%
break;
case 116:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg0125");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
        publicadores.Artista obtenerArtista116mtemp = sampleControladorUsuarioPublishProxyid.obtenerArtista(arg0_16idTemp);
if(obtenerArtista116mtemp == null){
%>
<%=obtenerArtista116mtemp %>
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
if(obtenerArtista116mtemp != null){
java.lang.String typedescripcion119 = obtenerArtista116mtemp.getDescripcion();
        String tempResultdescripcion119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion119));
        %>
        <%= tempResultdescripcion119 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(obtenerArtista116mtemp != null){
java.lang.String typelink121 = obtenerArtista116mtemp.getLink();
        String tempResultlink121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink121));
        %>
        <%= tempResultlink121 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(obtenerArtista116mtemp != null){
java.lang.String typebiografia123 = obtenerArtista116mtemp.getBiografia();
        String tempResultbiografia123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia123));
        %>
        <%= tempResultbiografia123 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 127:
        gotMethod = true;
        String arg0_17id=  request.getParameter("arg0144");
            java.lang.String arg0_17idTemp = null;
        if(!arg0_17id.equals("")){
         arg0_17idTemp  = arg0_17id;
        }
        publicadores.DtUsuario getLoginUsuario127mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_17idTemp);
if(getLoginUsuario127mtemp == null){
%>
<%=getLoginUsuario127mtemp %>
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
if(getLoginUsuario127mtemp != null){
java.util.Calendar typefNacimiento130 = getLoginUsuario127mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento130 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento130 = typefNacimiento130.getTime();
        String tempResultfNacimiento130 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento130.format(datefNacimiento130));
        %>
        <%= tempResultfNacimiento130 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
java.lang.String typenickname132 = getLoginUsuario127mtemp.getNickname();
        String tempResultnickname132 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname132));
        %>
        <%= tempResultnickname132 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
java.lang.String typeemail134 = getLoginUsuario127mtemp.getEmail();
        String tempResultemail134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail134));
        %>
        <%= tempResultemail134 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
java.lang.String typenombre136 = getLoginUsuario127mtemp.getNombre();
        String tempResultnombre136 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre136));
        %>
        <%= tempResultnombre136 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
byte[] typeimagen138 = getLoginUsuario127mtemp.getImagen();
        String tempimagen138 = "[";        for(int iimagen138=0;iimagen138< typeimagen138.length;iimagen138++){
            tempimagen138 = tempimagen138 + typeimagen138[iimagen138] + ",";
        }
        int lengthimagen138 = tempimagen138.length();
        tempimagen138 = tempimagen138.substring(0,(lengthimagen138 - 1)) + "]";
        %>
        <%=tempimagen138%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
java.lang.String typeapellido140 = getLoginUsuario127mtemp.getApellido();
        String tempResultapellido140 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido140));
        %>
        <%= tempResultapellido140 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuario127mtemp != null){
java.lang.String typecontrasenia142 = getLoginUsuario127mtemp.getContrasenia();
        String tempResultcontrasenia142 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia142));
        %>
        <%= tempResultcontrasenia142 %>
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