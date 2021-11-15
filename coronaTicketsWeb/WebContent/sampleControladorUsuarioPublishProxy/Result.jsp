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
<<<<<<< HEAD
        java.lang.String[] listarNicknameEspectadores13mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameEspectadores();
if(listarNicknameEspectadores13mtemp == null){
%>
<%=listarNicknameEspectadores13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarNicknameEspectadores13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarNicknameEspectadores13mtemp);
=======
        java.lang.String[] listarNicknameArtistas13mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas13mtemp == null){
%>
<%=listarNicknameArtistas13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(listarNicknameArtistas13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(listarNicknameArtistas13mtemp);
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
<<<<<<< HEAD
        %>
        <jsp:useBean id="publicadores1DtEspectador_1id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_1id);
break;
case 21:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg038");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.Usuario obtenerUsuario21mtemp = sampleControladorUsuarioPublishProxyid.obtenerUsuario(arg0_2idTemp);
if(obtenerUsuario21mtemp == null){
%>
<%=obtenerUsuario21mtemp %>
=======
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
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.util.Calendar typefNacimiento24 = obtenerUsuario21mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento24 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento24 = typefNacimiento24.getTime();
        String tempResultfNacimiento24 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento24.format(datefNacimiento24));
        %>
        <%= tempResultfNacimiento24 %>
=======
if(obtenerUsuario27mtemp != null){
java.util.Calendar typefNacimiento30 = obtenerUsuario27mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento30 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento30 = typefNacimiento30.getTime();
        String tempResultfNacimiento30 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento30.format(datefNacimiento30));
        %>
        <%= tempResultfNacimiento30 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.lang.String typenickname26 = obtenerUsuario21mtemp.getNickname();
        String tempResultnickname26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname26));
        %>
        <%= tempResultnickname26 %>
=======
if(obtenerUsuario27mtemp != null){
java.lang.String typenickname32 = obtenerUsuario27mtemp.getNickname();
        String tempResultnickname32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname32));
        %>
        <%= tempResultnickname32 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.lang.String typeemail28 = obtenerUsuario21mtemp.getEmail();
        String tempResultemail28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail28));
        %>
        <%= tempResultemail28 %>
=======
if(obtenerUsuario27mtemp != null){
java.lang.String typeemail34 = obtenerUsuario27mtemp.getEmail();
        String tempResultemail34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail34));
        %>
        <%= tempResultemail34 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.lang.String typenombre30 = obtenerUsuario21mtemp.getNombre();
        String tempResultnombre30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre30));
        %>
        <%= tempResultnombre30 %>
=======
if(obtenerUsuario27mtemp != null){
java.lang.String typenombre36 = obtenerUsuario27mtemp.getNombre();
        String tempResultnombre36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre36));
        %>
        <%= tempResultnombre36 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
byte[] typeimagen32 = obtenerUsuario21mtemp.getImagen();
        String tempimagen32 = "[";        for(int iimagen32=0;iimagen32< typeimagen32.length;iimagen32++){
            tempimagen32 = tempimagen32 + typeimagen32[iimagen32] + ",";
        }
        int lengthimagen32 = tempimagen32.length();
        tempimagen32 = tempimagen32.substring(0,(lengthimagen32 - 1)) + "]";
        %>
        <%=tempimagen32%>
=======
if(obtenerUsuario27mtemp != null){
byte[] typeimagen38 = obtenerUsuario27mtemp.getImagen();
        String tempimagen38 = "[";        for(int iimagen38=0;iimagen38< typeimagen38.length;iimagen38++){
            tempimagen38 = tempimagen38 + typeimagen38[iimagen38] + ",";
        }
        int lengthimagen38 = tempimagen38.length();
        tempimagen38 = tempimagen38.substring(0,(lengthimagen38 - 1)) + "]";
        %>
        <%=tempimagen38%>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.lang.String typeapellido34 = obtenerUsuario21mtemp.getApellido();
        String tempResultapellido34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido34));
        %>
        <%= tempResultapellido34 %>
=======
if(obtenerUsuario27mtemp != null){
java.lang.String typeapellido40 = obtenerUsuario27mtemp.getApellido();
        String tempResultapellido40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido40));
        %>
        <%= tempResultapellido40 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerUsuario21mtemp != null){
java.lang.String typecontrasenia36 = obtenerUsuario21mtemp.getContrasenia();
        String tempResultcontrasenia36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia36));
        %>
        <%= tempResultcontrasenia36 %>
=======
if(obtenerUsuario27mtemp != null){
java.lang.String typecontrasenia42 = obtenerUsuario27mtemp.getContrasenia();
        String tempResultcontrasenia42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia42));
        %>
        <%= tempResultcontrasenia42 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
</TABLE>
<%
}
break;
<<<<<<< HEAD
case 40:
        gotMethod = true;
        java.lang.String[] listarNicknameUsuarios40mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuarios();
if(listarNicknameUsuarios40mtemp == null){
%>
<%=listarNicknameUsuarios40mtemp %>
<%
}else{
        String tempreturnp41 = null;
        if(listarNicknameUsuarios40mtemp != null){
        java.util.List listreturnp41= java.util.Arrays.asList(listarNicknameUsuarios40mtemp);
        tempreturnp41 = listreturnp41.toString();
        }
        %>
        <%=tempreturnp41%>
        <%
}
break;
case 43:
        gotMethod = true;
        java.lang.String[] listarNicknameArtistas43mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas43mtemp == null){
%>
<%=listarNicknameArtistas43mtemp %>
<%
}else{
        String tempreturnp44 = null;
        if(listarNicknameArtistas43mtemp != null){
        java.util.List listreturnp44= java.util.Arrays.asList(listarNicknameArtistas43mtemp);
        tempreturnp44 = listreturnp44.toString();
        }
        %>
        <%=tempreturnp44%>
        <%
}
break;
case 46:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg049");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        java.lang.String[] listarNicknameUsuariosNoSeguidos46mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosNoSeguidos(arg0_3idTemp);
if(listarNicknameUsuariosNoSeguidos46mtemp == null){
%>
<%=listarNicknameUsuariosNoSeguidos46mtemp %>
<%
}else{
        String tempreturnp47 = null;
        if(listarNicknameUsuariosNoSeguidos46mtemp != null){
        java.util.List listreturnp47= java.util.Arrays.asList(listarNicknameUsuariosNoSeguidos46mtemp);
        tempreturnp47 = listreturnp47.toString();
        }
        %>
        <%=tempreturnp47%>
        <%
}
break;
case 51:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg054");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        String arg1_5id=  request.getParameter("arg156");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        sampleControladorUsuarioPublishProxyid.dejarDeSeguirUsuario(arg0_4idTemp,arg1_5idTemp);
break;
case 58:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg061");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        java.lang.String[] listarNicknameUsuariosSeguidos58mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosSeguidos(arg0_6idTemp);
if(listarNicknameUsuariosSeguidos58mtemp == null){
%>
<%=listarNicknameUsuariosSeguidos58mtemp %>
<%
}else{
        String tempreturnp59 = null;
        if(listarNicknameUsuariosSeguidos58mtemp != null){
        java.util.List listreturnp59= java.util.Arrays.asList(listarNicknameUsuariosSeguidos58mtemp);
        tempreturnp59 = listreturnp59.toString();
        }
        %>
        <%=tempreturnp59%>
        <%
}
break;
case 63:
=======
case 46:
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg080");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        publicadores.DtUsuario getLoginUsuarioMail63mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuarioMail(arg0_7idTemp);
if(getLoginUsuarioMail63mtemp == null){
%>
<%=getLoginUsuarioMail63mtemp %>
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
if(getLoginUsuarioMail63mtemp != null){
java.util.Calendar typefNacimiento66 = getLoginUsuarioMail63mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento66 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento66 = typefNacimiento66.getTime();
        String tempResultfNacimiento66 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento66.format(datefNacimiento66));
        %>
        <%= tempResultfNacimiento66 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typenickname68 = getLoginUsuarioMail63mtemp.getNickname();
        String tempResultnickname68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname68));
        %>
        <%= tempResultnickname68 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typeemail70 = getLoginUsuarioMail63mtemp.getEmail();
        String tempResultemail70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail70));
        %>
        <%= tempResultemail70 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typenombre72 = getLoginUsuarioMail63mtemp.getNombre();
        String tempResultnombre72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre72));
        %>
        <%= tempResultnombre72 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
byte[] typeimagen74 = getLoginUsuarioMail63mtemp.getImagen();
        String tempimagen74 = "[";        for(int iimagen74=0;iimagen74< typeimagen74.length;iimagen74++){
            tempimagen74 = tempimagen74 + typeimagen74[iimagen74] + ",";
        }
        int lengthimagen74 = tempimagen74.length();
        tempimagen74 = tempimagen74.substring(0,(lengthimagen74 - 1)) + "]";
        %>
        <%=tempimagen74%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typeapellido76 = getLoginUsuarioMail63mtemp.getApellido();
        String tempResultapellido76 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido76));
        %>
        <%= tempResultapellido76 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typecontrasenia78 = getLoginUsuarioMail63mtemp.getContrasenia();
        String tempResultcontrasenia78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia78));
        %>
        <%= tempResultcontrasenia78 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
<<<<<<< HEAD
case 82:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg099");
            java.lang.String arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
         arg0_8idTemp  = arg0_8id;
        }
        publicadores.DtUsuario getLoginUsuario82mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_8idTemp);
if(getLoginUsuario82mtemp == null){
%>
<%=getLoginUsuario82mtemp %>
=======
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
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.util.Calendar typefNacimiento85 = getLoginUsuario82mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento85 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento85 = typefNacimiento85.getTime();
        String tempResultfNacimiento85 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento85.format(datefNacimiento85));
        %>
        <%= tempResultfNacimiento85 %>
=======
if(getLoginArtista100mtemp != null){
java.lang.String typedescripcion103 = getLoginArtista100mtemp.getDescripcion();
        String tempResultdescripcion103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion103));
        %>
        <%= tempResultdescripcion103 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typenickname87 = getLoginUsuario82mtemp.getNickname();
        String tempResultnickname87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname87));
        %>
        <%= tempResultnickname87 %>
=======
if(getLoginArtista100mtemp != null){
java.lang.String typelink105 = getLoginArtista100mtemp.getLink();
        String tempResultlink105 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink105));
        %>
        <%= tempResultlink105 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typeemail89 = getLoginUsuario82mtemp.getEmail();
        String tempResultemail89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail89));
        %>
        <%= tempResultemail89 %>
=======
if(getLoginArtista100mtemp != null){
java.lang.String typebiografia107 = getLoginArtista100mtemp.getBiografia();
        String tempResultbiografia107 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia107));
        %>
        <%= tempResultbiografia107 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
</TABLE>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typenombre91 = getLoginUsuario82mtemp.getNombre();
        String tempResultnombre91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre91));
        %>
        <%= tempResultnombre91 %>
=======
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
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
byte[] typeimagen93 = getLoginUsuario82mtemp.getImagen();
        String tempimagen93 = "[";        for(int iimagen93=0;iimagen93< typeimagen93.length;iimagen93++){
            tempimagen93 = tempimagen93 + typeimagen93[iimagen93] + ",";
        }
        int lengthimagen93 = tempimagen93.length();
        tempimagen93 = tempimagen93.substring(0,(lengthimagen93 - 1)) + "]";
        %>
        <%=tempimagen93%>
=======
if(obtenerArtista116mtemp != null){
java.lang.String typedescripcion119 = obtenerArtista116mtemp.getDescripcion();
        String tempResultdescripcion119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion119));
        %>
        <%= tempResultdescripcion119 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typeapellido95 = getLoginUsuario82mtemp.getApellido();
        String tempResultapellido95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido95));
        %>
        <%= tempResultapellido95 %>
=======
if(obtenerArtista116mtemp != null){
java.lang.String typelink121 = obtenerArtista116mtemp.getLink();
        String tempResultlink121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink121));
        %>
        <%= tempResultlink121 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typecontrasenia97 = getLoginUsuario82mtemp.getContrasenia();
        String tempResultcontrasenia97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia97));
        %>
        <%= tempResultcontrasenia97 %>
=======
if(obtenerArtista116mtemp != null){
java.lang.String typebiografia123 = obtenerArtista116mtemp.getBiografia();
        String tempResultbiografia123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia123));
        %>
        <%= tempResultbiografia123 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
</TABLE>
<%
}
break;
<<<<<<< HEAD
case 101:
        gotMethod = true;
        String arg0_9id=  request.getParameter("arg0104");
            java.lang.String arg0_9idTemp = null;
        if(!arg0_9id.equals("")){
         arg0_9idTemp  = arg0_9id;
        }
        boolean emailRepetido101mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_9idTemp);
        String tempResultreturnp102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido101mtemp));
        %>
        <%= tempResultreturnp102 %>
        <%
break;
case 106:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg0109");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        String arg1_11id=  request.getParameter("arg1111");
            java.lang.String arg1_11idTemp = null;
        if(!arg1_11id.equals("")){
         arg1_11idTemp  = arg1_11id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_10idTemp,arg1_11idTemp);
break;
case 113:
        gotMethod = true;
        String arg0_12id=  request.getParameter("arg0122");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        publicadores.Artista obtenerArtista113mtemp = sampleControladorUsuarioPublishProxyid.obtenerArtista(arg0_12idTemp);
if(obtenerArtista113mtemp == null){
%>
<%=obtenerArtista113mtemp %>
=======
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
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
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
<<<<<<< HEAD
if(obtenerArtista113mtemp != null){
java.lang.String typedescripcion116 = obtenerArtista113mtemp.getDescripcion();
        String tempResultdescripcion116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion116));
        %>
        <%= tempResultdescripcion116 %>
=======
if(getLoginUsuario127mtemp != null){
java.util.Calendar typefNacimiento130 = getLoginUsuario127mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento130 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento130 = typefNacimiento130.getTime();
        String tempResultfNacimiento130 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento130.format(datefNacimiento130));
        %>
        <%= tempResultfNacimiento130 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerArtista113mtemp != null){
java.lang.String typelink118 = obtenerArtista113mtemp.getLink();
        String tempResultlink118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink118));
        %>
        <%= tempResultlink118 %>
=======
if(getLoginUsuario127mtemp != null){
java.lang.String typenickname132 = getLoginUsuario127mtemp.getNickname();
        String tempResultnickname132 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname132));
        %>
        <%= tempResultnickname132 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerArtista113mtemp != null){
java.lang.String typebiografia120 = obtenerArtista113mtemp.getBiografia();
        String tempResultbiografia120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia120));
        %>
        <%= tempResultbiografia120 %>
=======
if(getLoginUsuario127mtemp != null){
java.lang.String typeemail134 = getLoginUsuario127mtemp.getEmail();
        String tempResultemail134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail134));
        %>
        <%= tempResultemail134 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
<<<<<<< HEAD
}
break;
case 124:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0133");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        publicadores.DtArtista getLoginArtista124mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_13idTemp);
if(getLoginArtista124mtemp == null){
%>
<%=getLoginArtista124mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
=======
if(getLoginUsuario127mtemp != null){
java.lang.String typenombre136 = getLoginUsuario127mtemp.getNombre();
        String tempResultnombre136 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre136));
        %>
        <%= tempResultnombre136 %>
        <%
}%>
</TD>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginArtista124mtemp != null){
java.lang.String typedescripcion127 = getLoginArtista124mtemp.getDescripcion();
        String tempResultdescripcion127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion127));
        %>
        <%= tempResultdescripcion127 %>
=======
if(getLoginUsuario127mtemp != null){
byte[] typeimagen138 = getLoginUsuario127mtemp.getImagen();
        String tempimagen138 = "[";        for(int iimagen138=0;iimagen138< typeimagen138.length;iimagen138++){
            tempimagen138 = tempimagen138 + typeimagen138[iimagen138] + ",";
        }
        int lengthimagen138 = tempimagen138.length();
        tempimagen138 = tempimagen138.substring(0,(lengthimagen138 - 1)) + "]";
        %>
        <%=tempimagen138%>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginArtista124mtemp != null){
java.lang.String typelink129 = getLoginArtista124mtemp.getLink();
        String tempResultlink129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink129));
        %>
        <%= tempResultlink129 %>
=======
if(getLoginUsuario127mtemp != null){
java.lang.String typeapellido140 = getLoginUsuario127mtemp.getApellido();
        String tempResultapellido140 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido140));
        %>
        <%= tempResultapellido140 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginArtista124mtemp != null){
java.lang.String typebiografia131 = getLoginArtista124mtemp.getBiografia();
        String tempResultbiografia131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia131));
        %>
        <%= tempResultbiografia131 %>
=======
if(getLoginUsuario127mtemp != null){
java.lang.String typecontrasenia142 = getLoginUsuario127mtemp.getContrasenia();
        String tempResultcontrasenia142 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia142));
        %>
        <%= tempResultcontrasenia142 %>
>>>>>>> 716f435eb1391fa1df2e2fa7e1a4beeb52e897f8
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 135:
        gotMethod = true;
        String descripcion_15id=  request.getParameter("descripcion140");
            java.lang.String descripcion_15idTemp = null;
        if(!descripcion_15id.equals("")){
         descripcion_15idTemp  = descripcion_15id;
        }
        String link_16id=  request.getParameter("link142");
            java.lang.String link_16idTemp = null;
        if(!link_16id.equals("")){
         link_16idTemp  = link_16id;
        }
        String biografia_17id=  request.getParameter("biografia144");
            java.lang.String biografia_17idTemp = null;
        if(!biografia_17id.equals("")){
         biografia_17idTemp  = biografia_17id;
        }
        %>
        <jsp:useBean id="publicadores1DtArtista_14id" scope="session" class="publicadores.DtArtista" />
        <%
        publicadores1DtArtista_14id.setDescripcion(descripcion_15idTemp);
        publicadores1DtArtista_14id.setLink(link_16idTemp);
        publicadores1DtArtista_14id.setBiografia(biografia_17idTemp);
        sampleControladorUsuarioPublishProxyid.altaDtArtista(publicadores1DtArtista_14id);
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