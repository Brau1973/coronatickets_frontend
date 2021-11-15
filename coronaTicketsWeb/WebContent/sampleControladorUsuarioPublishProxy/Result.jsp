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
        java.lang.String[] listarNicknameArtistas19mtemp = sampleControladorUsuarioPublishProxyid.listarNicknameArtistas();
if(listarNicknameArtistas19mtemp == null){
%>
<%=listarNicknameArtistas19mtemp %>
<%
}else{
        String tempreturnp20 = null;
        if(listarNicknameArtistas19mtemp != null){
        java.util.List listreturnp20= java.util.Arrays.asList(listarNicknameArtistas19mtemp);
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
        %>
        <jsp:useBean id="publicadores1DtEspectador_2id" scope="session" class="publicadores.DtEspectador" />
        <%
        sampleControladorUsuarioPublishProxyid.altaDtEspectador(publicadores1DtEspectador_2id);
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
case 82:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg091");
            java.lang.String arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
         arg0_8idTemp  = arg0_8id;
        }
        publicadores.DtArtista getLoginArtista82mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_8idTemp);
if(getLoginArtista82mtemp == null){
%>
<%=getLoginArtista82mtemp %>
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
if(getLoginArtista82mtemp != null){
java.lang.String typedescripcion85 = getLoginArtista82mtemp.getDescripcion();
        String tempResultdescripcion85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion85));
        %>
        <%= tempResultdescripcion85 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista82mtemp != null){
java.lang.String typelink87 = getLoginArtista82mtemp.getLink();
        String tempResultlink87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink87));
        %>
        <%= tempResultlink87 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista82mtemp != null){
java.lang.String typebiografia89 = getLoginArtista82mtemp.getBiografia();
        String tempResultbiografia89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia89));
        %>
        <%= tempResultbiografia89 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 93:
        gotMethod = true;
        String arg0_9id=  request.getParameter("arg096");
            java.lang.String arg0_9idTemp = null;
        if(!arg0_9id.equals("")){
         arg0_9idTemp  = arg0_9id;
        }
        String arg1_10id=  request.getParameter("arg198");
            java.lang.String arg1_10idTemp = null;
        if(!arg1_10id.equals("")){
         arg1_10idTemp  = arg1_10id;
        }
        sampleControladorUsuarioPublishProxyid.seguirUsuario(arg0_9idTemp,arg1_10idTemp);
break;
case 100:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg0103");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        boolean emailRepetido100mtemp = sampleControladorUsuarioPublishProxyid.emailRepetido(arg0_11idTemp);
        String tempResultreturnp101 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(emailRepetido100mtemp));
        %>
        <%= tempResultreturnp101 %>
        <%
break;
case 105:
        gotMethod = true;
        String descripcion_13id=  request.getParameter("descripcion110");
            java.lang.String descripcion_13idTemp = null;
        if(!descripcion_13id.equals("")){
         descripcion_13idTemp  = descripcion_13id;
        }
        String link_14id=  request.getParameter("link112");
            java.lang.String link_14idTemp = null;
        if(!link_14id.equals("")){
         link_14idTemp  = link_14id;
        }
        String biografia_15id=  request.getParameter("biografia114");
            java.lang.String biografia_15idTemp = null;
        if(!biografia_15id.equals("")){
         biografia_15idTemp  = biografia_15id;
        }
        %>
        <jsp:useBean id="publicadores1DtArtista_12id" scope="session" class="publicadores.DtArtista" />
        <%
        publicadores1DtArtista_12id.setDescripcion(descripcion_13idTemp);
        publicadores1DtArtista_12id.setLink(link_14idTemp);
        publicadores1DtArtista_12id.setBiografia(biografia_15idTemp);
        sampleControladorUsuarioPublishProxyid.altaDtArtista(publicadores1DtArtista_12id);
break;
case 116:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg0133");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
        publicadores.DtUsuario getLoginUsuario116mtemp = sampleControladorUsuarioPublishProxyid.getLoginUsuario(arg0_16idTemp);
if(getLoginUsuario116mtemp == null){
%>
<%=getLoginUsuario116mtemp %>
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
if(getLoginUsuario116mtemp != null){
java.util.Calendar typefNacimiento119 = getLoginUsuario116mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento119 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento119 = typefNacimiento119.getTime();
        String tempResultfNacimiento119 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento119.format(datefNacimiento119));
        %>
        <%= tempResultfNacimiento119 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
java.lang.String typenickname121 = getLoginUsuario116mtemp.getNickname();
        String tempResultnickname121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname121));
        %>
        <%= tempResultnickname121 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
java.lang.String typeemail123 = getLoginUsuario116mtemp.getEmail();
        String tempResultemail123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail123));
        %>
        <%= tempResultemail123 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
java.lang.String typenombre125 = getLoginUsuario116mtemp.getNombre();
        String tempResultnombre125 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre125));
        %>
        <%= tempResultnombre125 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
byte[] typeimagen127 = getLoginUsuario116mtemp.getImagen();
        String tempimagen127 = "[";        for(int iimagen127=0;iimagen127< typeimagen127.length;iimagen127++){
            tempimagen127 = tempimagen127 + typeimagen127[iimagen127] + ",";
        }
        int lengthimagen127 = tempimagen127.length();
        tempimagen127 = tempimagen127.substring(0,(lengthimagen127 - 1)) + "]";
        %>
        <%=tempimagen127%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
java.lang.String typeapellido129 = getLoginUsuario116mtemp.getApellido();
        String tempResultapellido129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido129));
        %>
        <%= tempResultapellido129 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(getLoginUsuario116mtemp != null){
java.lang.String typecontrasenia131 = getLoginUsuario116mtemp.getContrasenia();
        String tempResultcontrasenia131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia131));
        %>
        <%= tempResultcontrasenia131 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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