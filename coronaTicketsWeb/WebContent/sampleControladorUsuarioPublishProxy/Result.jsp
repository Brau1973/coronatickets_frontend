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
        java.lang.String[] listarNicknameUsuarios16mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuarios();
if(listarNicknameUsuarios16mtemp == null){
%>
<%=listarNicknameUsuarios16mtemp %>
<%
}else{
        String tempreturnp17 = null;
        if(listarNicknameUsuarios16mtemp != null){
        java.util.List listreturnp17= java.util.Arrays.asList(listarNicknameUsuarios16mtemp);
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
        java.lang.String[] listarNicknameUsuariosSeguidos41mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosSeguidos(arg0_2idTemp);
if(listarNicknameUsuariosSeguidos41mtemp == null){
%>
<%=listarNicknameUsuariosSeguidos41mtemp %>
<%
}else{
        String tempreturnp42 = null;
        if(listarNicknameUsuariosSeguidos41mtemp != null){
        java.util.List listreturnp42= java.util.Arrays.asList(listarNicknameUsuariosSeguidos41mtemp);
        tempreturnp42 = listreturnp42.toString();
        }
        %>
        <%=tempreturnp42%>
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
        String arg1_4id=  request.getParameter("arg151");
            java.lang.String arg1_4idTemp = null;
        if(!arg1_4id.equals("")){
         arg1_4idTemp  = arg1_4id;
        }
        sampleControladorUsuarioPublishProxyid.dejarDeSeguirUsuario(arg0_3idTemp,arg1_4idTemp);
break;
case 53:
        gotMethod = true;
        String arg0_5id=  request.getParameter("arg056");
            java.lang.String arg0_5idTemp = null;
        if(!arg0_5id.equals("")){
         arg0_5idTemp  = arg0_5id;
        }
        java.lang.String[] listarNicknameUsuariosNoSeguidos53mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameUsuariosNoSeguidos(arg0_5idTemp);
if(listarNicknameUsuariosNoSeguidos53mtemp == null){
%>
<%=listarNicknameUsuariosNoSeguidos53mtemp %>
<%
}else{
        String tempreturnp54 = null;
        if(listarNicknameUsuariosNoSeguidos53mtemp != null){
        java.util.List listreturnp54= java.util.Arrays.asList(listarNicknameUsuariosNoSeguidos53mtemp);
        tempreturnp54 = listreturnp54.toString();
        }
        %>
        <%=tempreturnp54%>
        <%
}
break;
case 58:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg075");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        publicadores.DtUsuario getLoginUsuarioMail58mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuarioMail(arg0_6idTemp);
if(getLoginUsuarioMail58mtemp == null){
%>
<%=getLoginUsuarioMail58mtemp %>
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
if(getLoginUsuarioMail58mtemp != null){
java.util.Calendar typefNacimiento61 = getLoginUsuarioMail58mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento61 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento61 = typefNacimiento61.getTime();
        String tempResultfNacimiento61 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento61.format(datefNacimiento61));
        %>
        <%= tempResultfNacimiento61 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
java.lang.String typenickname63 = getLoginUsuarioMail58mtemp.getNickname();
        String tempResultnickname63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname63));
        %>
        <%= tempResultnickname63 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
java.lang.String typeemail65 = getLoginUsuarioMail58mtemp.getEmail();
        String tempResultemail65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail65));
        %>
        <%= tempResultemail65 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
byte[] typeimagen67 = getLoginUsuarioMail58mtemp.getImagen();
        String tempimagen67 = "[";        for(int iimagen67=0;iimagen67< typeimagen67.length;iimagen67++){
            tempimagen67 = tempimagen67 + typeimagen67[iimagen67] + ",";
        }
        int lengthimagen67 = tempimagen67.length();
        tempimagen67 = tempimagen67.substring(0,(lengthimagen67 - 1)) + "]";
        %>
        <%=tempimagen67%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
java.lang.String typenombre69 = getLoginUsuarioMail58mtemp.getNombre();
        String tempResultnombre69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre69));
        %>
        <%= tempResultnombre69 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
java.lang.String typeapellido71 = getLoginUsuarioMail58mtemp.getApellido();
        String tempResultapellido71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido71));
        %>
        <%= tempResultapellido71 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuarioMail58mtemp != null){
java.lang.String typecontrasenia73 = getLoginUsuarioMail58mtemp.getContrasenia();
        String tempResultcontrasenia73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia73));
        %>
        <%= tempResultcontrasenia73 %>
        <%
}%>
</TD>
</TABLE>
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
        String arg1_8id=  request.getParameter("arg182");
            java.lang.String arg1_8idTemp = null;
        if(!arg1_8id.equals("")){
         arg1_8idTemp  = arg1_8id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_7idTemp,arg1_8idTemp);
break;
case 84:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1DtEspectador_9id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_9id);
break;
case 89:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg0106");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        publicadores.DtUsuario getLoginUsuario89mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_10idTemp);
if(getLoginUsuario89mtemp == null){
%>
<%=getLoginUsuario89mtemp %>
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
if(getLoginUsuario89mtemp != null){
java.util.Calendar typefNacimiento92 = getLoginUsuario89mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento92 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento92 = typefNacimiento92.getTime();
        String tempResultfNacimiento92 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento92.format(datefNacimiento92));
        %>
        <%= tempResultfNacimiento92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
java.lang.String typenickname94 = getLoginUsuario89mtemp.getNickname();
        String tempResultnickname94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname94));
        %>
        <%= tempResultnickname94 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
java.lang.String typeemail96 = getLoginUsuario89mtemp.getEmail();
        String tempResultemail96 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail96));
        %>
        <%= tempResultemail96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
byte[] typeimagen98 = getLoginUsuario89mtemp.getImagen();
        String tempimagen98 = "[";        for(int iimagen98=0;iimagen98< typeimagen98.length;iimagen98++){
            tempimagen98 = tempimagen98 + typeimagen98[iimagen98] + ",";
        }
        int lengthimagen98 = tempimagen98.length();
        tempimagen98 = tempimagen98.substring(0,(lengthimagen98 - 1)) + "]";
        %>
        <%=tempimagen98%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
java.lang.String typenombre100 = getLoginUsuario89mtemp.getNombre();
        String tempResultnombre100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre100));
        %>
        <%= tempResultnombre100 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
java.lang.String typeapellido102 = getLoginUsuario89mtemp.getApellido();
        String tempResultapellido102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido102));
        %>
        <%= tempResultapellido102 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuario89mtemp != null){
java.lang.String typecontrasenia104 = getLoginUsuario89mtemp.getContrasenia();
        String tempResultcontrasenia104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia104));
        %>
        <%= tempResultcontrasenia104 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 108:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg0117");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        publicadores.DtArtista getLoginArtista108mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_11idTemp);
if(getLoginArtista108mtemp == null){
%>
<%=getLoginArtista108mtemp %>
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
if(getLoginArtista108mtemp != null){
java.lang.String typedescripcion111 = getLoginArtista108mtemp.getDescripcion();
        String tempResultdescripcion111 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion111));
        %>
        <%= tempResultdescripcion111 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista108mtemp != null){
java.lang.String typelink113 = getLoginArtista108mtemp.getLink();
        String tempResultlink113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink113));
        %>
        <%= tempResultlink113 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista108mtemp != null){
java.lang.String typebiografia115 = getLoginArtista108mtemp.getBiografia();
        String tempResultbiografia115 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia115));
        %>
        <%= tempResultbiografia115 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 119:
        gotMethod = true;
        String arg0_12id=  request.getParameter("arg0122");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        boolean emailRepetido119mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_12idTemp);
        String tempResultreturnp120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido119mtemp));
        %>
        <%= tempResultreturnp120 %>
        <%
break;
case 124:
        gotMethod = true;
        String descripcion_14id=  request.getParameter("descripcion129");
            java.lang.String descripcion_14idTemp = null;
        if(!descripcion_14id.equals("")){
         descripcion_14idTemp  = descripcion_14id;
        }
        String link_15id=  request.getParameter("link131");
            java.lang.String link_15idTemp = null;
        if(!link_15id.equals("")){
         link_15idTemp  = link_15id;
        }
        String biografia_16id=  request.getParameter("biografia133");
            java.lang.String biografia_16idTemp = null;
        if(!biografia_16id.equals("")){
         biografia_16idTemp  = biografia_16id;
        }
        %>
        <jsp:useBean id="publicadores1DtArtista_13id" scope="session" class="publicadores.DtArtista" />
        <%
        publicadores1DtArtista_13id.setDescripcion(descripcion_14idTemp);
        publicadores1DtArtista_13id.setLink(link_15idTemp);
        publicadores1DtArtista_13id.setBiografia(biografia_16idTemp);
        sampleControladorUsuarioPublishProxyid.altaDtArtista(publicadores1DtArtista_13id);
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