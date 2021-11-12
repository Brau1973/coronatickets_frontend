package funcion;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.DtEspectaculo;
import publicadores.DtFuncion;
import publicadores.Espectaculo;
import publicadores.Artista;
import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;
import publicadores.ControladorFuncionPublish;
import publicadores.ControladorFuncionPublishService;
import publicadores.ControladorFuncionPublishServiceLocator;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;
import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.Funcion;

@WebServlet("/ConsultaFuncionEspectaculo")
public class ConsultaFuncionEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsultaFuncionEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = "";
		Funcion func = null;
		ArrayList<DtEspectaculo> listEspectaculosDt = null;
		ArrayList<DtFuncion> listFunciones = null;
		ArrayList<Artista> dtArt = null;

		RequestDispatcher rd;
		if (strPlataforma != null) {
			if (request.getParameter("boton").equals("selPlataformas")) {
				try {
					listEspectaculosDt = obtenerEspectaculos(strPlataforma);	
				} catch (Exception e) {
					e.printStackTrace();
				}
				strEspectaculo = request.getParameter("nomEspectaculo");
			} else if (request.getParameter("boton").equals("selEspectaculo")) {
				try {
					listEspectaculosDt = obtenerEspectaculos(strPlataforma);
				} catch (Exception e) {
					e.printStackTrace();
				}
				strEspectaculo = request.getParameter("nomEspectaculo");
				try {
					listFunciones = obtenerFunciones(strEspectaculo);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				request.setAttribute("funciones", listFunciones);

			} else if (request.getParameter("boton").equals("selFuncion")) {
				String strFuncion = request.getParameter("nomFuncion");
				try {
					func = obtenerNombreFuncion(strFuncion);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
				Calendar fechaN = new GregorianCalendar();
				fechaN=func.getFecha();
				//String a=formato.format(func.getFecha());
				
				String dia, mes, anio;
				dia = Integer.toString(func.getRegistro().get(Calendar.DATE));
				mes = Integer.toString(func.getRegistro().get(Calendar.MONTH)+1);
				anio = Integer.toString(func.getRegistro().get(Calendar.YEAR));

				String diaF, mesF, anioF;
				diaF = Integer.toString(func.getFecha().get(Calendar.DATE));
				mesF = Integer.toString(func.getFecha().get(Calendar.MONTH)+1);
				anioF = Integer.toString(func.getFecha().get(Calendar.YEAR));
				
				request.setAttribute("mostrarFunciones", "Nombre: " + func.getNombre() + "<br/>Fecha: " + diaF + "/" + mesF +"/" + anioF
				+ "<br/>Hora: " + func.getFecha().get(Calendar.HOUR_OF_DAY) +":"+ func.getFecha().get(Calendar.MINUTE)+"hs"+ "<br/>Registro: " + dia + "/" + mes +"/" + anio);
				//func.getArtistas();
				List<String> listArtistas = new ArrayList<String>();
				for (Artista artistai : func.getArtistas()) {
					listArtistas.add(artistai.getNombre());
				}
				request.setAttribute("mostrarArtistas", listArtistas);
				if (func.getImagen() != null) {
					byte[] foto = func.getImagen();
					BufferedImage image = null;
					InputStream in = new ByteArrayInputStream(foto);
					try {
						image = ImageIO.read(in);
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					ByteArrayOutputStream output = new ByteArrayOutputStream();
					ImageIO.write(image, "jpg", output);
					String imageBase64 = Base64.getEncoder().encodeToString(output.toByteArray());
					request.setAttribute("mostrarFoto", imageBase64);
				}
				rd = request.getRequestDispatcher("/datosFunciones.jsp");
				rd.forward(request, response);
			}
		}

		HttpSession session = request.getSession();
		session.setAttribute("espectaculos", listEspectaculosDt);
		session.setAttribute("plataformaSelected", strPlataforma);
		session.setAttribute("espectaculoSelected", strEspectaculo);
		session.setAttribute("funciones", listFunciones);
		rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
		rd.forward(request, response);
	}

	public ArrayList<DtEspectaculo> obtenerEspectaculos(String strPlataforma) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtEspectaculo[] espectaculos = port.listarEspectaculos(strPlataforma);
		ArrayList<DtEspectaculo> lstEspectaculo = new ArrayList<>();
		for (int i = 0; i < espectaculos.length; ++i) {
			lstEspectaculo.add(espectaculos[i]);
		}
		return lstEspectaculo;
	}
	
	public ArrayList<DtFuncion> obtenerFunciones(String strEspectaculo) throws Exception {
		ControladorFuncionPublishService cps = new ControladorFuncionPublishServiceLocator();
		ControladorFuncionPublish port = cps.getControladorFuncionPublishPort();
		DtFuncion[] funciones = port.listarFunciones(strEspectaculo);
		ArrayList<DtFuncion> lstFunciones = new ArrayList<>();
		for (int i = 0; i < funciones.length; ++i) {
			lstFunciones.add(funciones[i]);
		}
		return lstFunciones;
	}
	
	public Funcion obtenerNombreFuncion(String strFuncion) throws Exception {
		ControladorFuncionPublishService cps = new ControladorFuncionPublishServiceLocator();
		ControladorFuncionPublish port = cps.getControladorFuncionPublishPort();
		return port.obtenerFuncion(strFuncion);
	}
}