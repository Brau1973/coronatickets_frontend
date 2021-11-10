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
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
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
        String arg0_1id=  request.getParameter("arg030");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.Usuario obtenerUsuario13mtemp = sampleControladorUsuarioPublishProxyid.obtenerUsuario(arg0_1idTemp);
if(obtenerUsuario13mtemp == null){
%>
<%=obtenerUsuario13mtemp %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.util.Calendar typefNacimiento16 = obtenerUsuario13mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento16 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento16 = typefNacimiento16.getTime();
        String tempResultfNacimiento16 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento16.format(datefNacimiento16));
        %>
        <%= tempResultfNacimiento16 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.lang.String typenickname18 = obtenerUsuario13mtemp.getNickname();
        String tempResultnickname18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname18));
        %>
        <%= tempResultnickname18 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.lang.String typeemail20 = obtenerUsuario13mtemp.getEmail();
        String tempResultemail20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail20));
        %>
        <%= tempResultemail20 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.lang.String typenombre22 = obtenerUsuario13mtemp.getNombre();
        String tempResultnombre22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre22));
        %>
        <%= tempResultnombre22 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
byte[] typeimagen24 = obtenerUsuario13mtemp.getImagen();
        String tempimagen24 = "[";        for(int iimagen24=0;iimagen24< typeimagen24.length;iimagen24++){
            tempimagen24 = tempimagen24 + typeimagen24[iimagen24] + ",";
        }
        int lengthimagen24 = tempimagen24.length();
        tempimagen24 = tempimagen24.substring(0,(lengthimagen24 - 1)) + "]";
        %>
        <%=tempimagen24%>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.lang.String typeapellido26 = obtenerUsuario13mtemp.getApellido();
        String tempResultapellido26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido26));
        %>
        <%= tempResultapellido26 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerUsuario13mtemp != null){
java.lang.String typecontrasenia28 = obtenerUsuario13mtemp.getContrasenia();
        String tempResultcontrasenia28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia28));
        %>
        <%= tempResultcontrasenia28 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
=======
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
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}
break;
case 35:
        gotMethod = true;
<<<<<<< HEAD
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
=======
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
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(getLoginUsuarioMail63mtemp != null){
java.util.Calendar typefNacimiento66 = getLoginUsuarioMail63mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento66 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento66 = typefNacimiento66.getTime();
        String tempResultfNacimiento66 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento66.format(datefNacimiento66));
        %>
        <%= tempResultfNacimiento66 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.util.Calendar typefNacimiento49 = getLoginUsuarioMail46mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento49 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento49 = typefNacimiento49.getTime();
        String tempResultfNacimiento49 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento49.format(datefNacimiento49));
        %>
        <%= tempResultfNacimiento49 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typenickname68 = getLoginUsuarioMail63mtemp.getNickname();
        String tempResultnickname68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname68));
        %>
        <%= tempResultnickname68 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typenickname51 = getLoginUsuarioMail46mtemp.getNickname();
        String tempResultnickname51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname51));
        %>
        <%= tempResultnickname51 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typeemail70 = getLoginUsuarioMail63mtemp.getEmail();
        String tempResultemail70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail70));
        %>
        <%= tempResultemail70 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typeemail53 = getLoginUsuarioMail46mtemp.getEmail();
        String tempResultemail53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail53));
        %>
        <%= tempResultemail53 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typenombre72 = getLoginUsuarioMail63mtemp.getNombre();
        String tempResultnombre72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre72));
        %>
        <%= tempResultnombre72 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typenombre55 = getLoginUsuarioMail46mtemp.getNombre();
        String tempResultnombre55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre55));
        %>
        <%= tempResultnombre55 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
byte[] typeimagen74 = getLoginUsuarioMail63mtemp.getImagen();
        String tempimagen74 = "[";        for(int iimagen74=0;iimagen74< typeimagen74.length;iimagen74++){
            tempimagen74 = tempimagen74 + typeimagen74[iimagen74] + ",";
        }
        int lengthimagen74 = tempimagen74.length();
        tempimagen74 = tempimagen74.substring(0,(lengthimagen74 - 1)) + "]";
        %>
        <%=tempimagen74%>
=======
if(getLoginUsuarioMail46mtemp != null){
byte[] typeimagen57 = getLoginUsuarioMail46mtemp.getImagen();
        String tempimagen57 = "[";        for(int iimagen57=0;iimagen57< typeimagen57.length;iimagen57++){
            tempimagen57 = tempimagen57 + typeimagen57[iimagen57] + ",";
        }
        int lengthimagen57 = tempimagen57.length();
        tempimagen57 = tempimagen57.substring(0,(lengthimagen57 - 1)) + "]";
        %>
        <%=tempimagen57%>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typeapellido76 = getLoginUsuarioMail63mtemp.getApellido();
        String tempResultapellido76 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido76));
        %>
        <%= tempResultapellido76 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typeapellido59 = getLoginUsuarioMail46mtemp.getApellido();
        String tempResultapellido59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido59));
        %>
        <%= tempResultapellido59 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuarioMail63mtemp != null){
java.lang.String typecontrasenia78 = getLoginUsuarioMail63mtemp.getContrasenia();
        String tempResultcontrasenia78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia78));
        %>
        <%= tempResultcontrasenia78 %>
=======
if(getLoginUsuarioMail46mtemp != null){
java.lang.String typecontrasenia61 = getLoginUsuarioMail46mtemp.getContrasenia();
        String tempResultcontrasenia61 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia61));
        %>
        <%= tempResultcontrasenia61 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(getLoginUsuario82mtemp != null){
java.util.Calendar typefNacimiento85 = getLoginUsuario82mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento85 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento85 = typefNacimiento85.getTime();
        String tempResultfNacimiento85 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento85.format(datefNacimiento85));
        %>
        <%= tempResultfNacimiento85 %>
=======
if(getLoginUsuario93mtemp != null){
java.util.Calendar typefNacimiento96 = getLoginUsuario93mtemp.getFNacimiento();
        java.text.DateFormat dateFormatfNacimiento96 = java.text.DateFormat.getDateInstance();
        java.util.Date datefNacimiento96 = typefNacimiento96.getTime();
        String tempResultfNacimiento96 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfNacimiento96.format(datefNacimiento96));
        %>
        <%= tempResultfNacimiento96 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typenickname87 = getLoginUsuario82mtemp.getNickname();
        String tempResultnickname87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname87));
        %>
        <%= tempResultnickname87 %>
=======
if(getLoginUsuario93mtemp != null){
java.lang.String typenickname98 = getLoginUsuario93mtemp.getNickname();
        String tempResultnickname98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname98));
        %>
        <%= tempResultnickname98 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typeemail89 = getLoginUsuario82mtemp.getEmail();
        String tempResultemail89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail89));
        %>
        <%= tempResultemail89 %>
=======
if(getLoginUsuario93mtemp != null){
java.lang.String typeemail100 = getLoginUsuario93mtemp.getEmail();
        String tempResultemail100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail100));
        %>
        <%= tempResultemail100 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typenombre91 = getLoginUsuario82mtemp.getNombre();
        String tempResultnombre91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre91));
        %>
        <%= tempResultnombre91 %>
=======
if(getLoginUsuario93mtemp != null){
java.lang.String typenombre102 = getLoginUsuario93mtemp.getNombre();
        String tempResultnombre102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre102));
        %>
        <%= tempResultnombre102 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">imagen:</TD>
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
if(getLoginUsuario93mtemp != null){
byte[] typeimagen104 = getLoginUsuario93mtemp.getImagen();
        String tempimagen104 = "[";        for(int iimagen104=0;iimagen104< typeimagen104.length;iimagen104++){
            tempimagen104 = tempimagen104 + typeimagen104[iimagen104] + ",";
        }
        int lengthimagen104 = tempimagen104.length();
        tempimagen104 = tempimagen104.substring(0,(lengthimagen104 - 1)) + "]";
        %>
        <%=tempimagen104%>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typeapellido95 = getLoginUsuario82mtemp.getApellido();
        String tempResultapellido95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido95));
        %>
        <%= tempResultapellido95 %>
=======
if(getLoginUsuario93mtemp != null){
java.lang.String typeapellido106 = getLoginUsuario93mtemp.getApellido();
        String tempResultapellido106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido106));
        %>
        <%= tempResultapellido106 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
<<<<<<< HEAD
if(getLoginUsuario82mtemp != null){
java.lang.String typecontrasenia97 = getLoginUsuario82mtemp.getContrasenia();
        String tempResultcontrasenia97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia97));
        %>
        <%= tempResultcontrasenia97 %>
=======
if(getLoginUsuario93mtemp != null){
java.lang.String typecontrasenia108 = getLoginUsuario93mtemp.getContrasenia();
        String tempResultcontrasenia108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia108));
        %>
        <%= tempResultcontrasenia108 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
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
if(obtenerArtista113mtemp != null){
java.lang.String typedescripcion116 = obtenerArtista113mtemp.getDescripcion();
        String tempResultdescripcion116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion116));
        %>
        <%= tempResultdescripcion116 %>
=======
if(getLoginArtista112mtemp != null){
java.lang.String typedescripcion115 = getLoginArtista112mtemp.getDescripcion();
        String tempResultdescripcion115 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion115));
        %>
        <%= tempResultdescripcion115 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerArtista113mtemp != null){
java.lang.String typelink118 = obtenerArtista113mtemp.getLink();
        String tempResultlink118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink118));
        %>
        <%= tempResultlink118 %>
=======
if(getLoginArtista112mtemp != null){
java.lang.String typelink117 = getLoginArtista112mtemp.getLink();
        String tempResultlink117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink117));
        %>
        <%= tempResultlink117 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
<<<<<<< HEAD
if(obtenerArtista113mtemp != null){
java.lang.String typebiografia120 = obtenerArtista113mtemp.getBiografia();
        String tempResultbiografia120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia120));
        %>
        <%= tempResultbiografia120 %>
=======
if(getLoginArtista112mtemp != null){
java.lang.String typebiografia119 = getLoginArtista112mtemp.getBiografia();
        String tempResultbiografia119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia119));
        %>
        <%= tempResultbiografia119 %>
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
        <%
}%>
</TD>
</TABLE>
<%
}
break;
<<<<<<< HEAD
case 124:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0133");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        publicadores.DtArtista getLoginArtista124mtemp = sampleControladorUsuarioPublishProxyid.getLoginArtista(arg0_13idTemp);
if(getLoginArtista124mtemp == null){
=======
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
>>>>>>> dd65cb09a54d8dc6e63dfd100c86d3a32d281979
%>
<%=getLoginArtista124mtemp %>
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
if(getLoginArtista124mtemp != null){
java.lang.String typedescripcion127 = getLoginArtista124mtemp.getDescripcion();
        String tempResultdescripcion127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion127));
        %>
        <%= tempResultdescripcion127 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">link:</TD>
<TD>
<%
if(getLoginArtista124mtemp != null){
java.lang.String typelink129 = getLoginArtista124mtemp.getLink();
        String tempResultlink129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelink129));
        %>
        <%= tempResultlink129 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getLoginArtista124mtemp != null){
java.lang.String typebiografia131 = getLoginArtista124mtemp.getBiografia();
        String tempResultbiografia131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia131));
        %>
        <%= tempResultbiografia131 %>
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