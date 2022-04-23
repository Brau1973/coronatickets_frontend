package usuario;

import java.io.DataInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtArtista;
import publicadores.DtEspectador;

@MultipartConfig
@WebServlet("/AltaUsuario")
public class AltaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String[] seguidos = null;
	private String[] seguidores = null;

	public AltaUsuario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("nickUsuario");
		String nombre = request.getParameter("nomUsuario");
		String apellido = request.getParameter("lastnUsuario");
		String contrasenia = request.getParameter("passUsuario");
		String contrasenia2 = request.getParameter("pass2Usuario");
		String correo = request.getParameter("emailUsuario");
		String fechaNac = request.getParameter("fechaUsuario");
		String imagen = request.getParameter("imagenUsuario");
		String descripcion = request.getParameter("descUsuario");
		String biografia = request.getParameter("bioUsuario");
		String url = request.getParameter("linkUsuario");
		String tipoU = request.getParameter("tipoUsuario");

		HttpSession sesion = request.getSession();

		Part imagenUsuario = null;
		imagenUsuario = request.getPart("imagen");
		byte[] foto = null;
		/*
		if(imagenUsuario != null) {
			int sizeimg = (int) imagenUsuario.getSize();
			foto = new byte[sizeimg];
			DataInputStream dis = new DataInputStream(imagenUsuario.getInputStream());
			dis.readFully(foto);
		}
		*/
		RequestDispatcher rd;

		try {
			// 	Date fecha = new SimpleDateFormat("dd/MM/yyyy").parse(fechaNac);
			SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
			Date fecha = null;
			try {
				fecha = formato.parse(fechaNac);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			Calendar fechaN = Calendar.getInstance();
			fechaN.setTime(fecha);

			if (tipoU.equals("Espectador")) {
				//	System.out.println("Estoy en " + tipoU);
				DtEspectador dte = new DtEspectador(apellido, contrasenia, correo, foto, nickname, nombre, seguidores, seguidos, fechaN);
				try {
					agregarDtEspectador(dte);
					request.setAttribute("mensaje", "Se ha ingresado correctamente el usuario "+nickname);
					rd = request.getRequestDispatcher("/notificacion.jsp");
					rd.forward(request, response);
				} catch (Exception e) {
					request.setAttribute("mensaje", "El usuario que intenta registrar ya existe");
					rd = request.getRequestDispatcher("/notificacion.jsp");
					rd.forward(request, response);
				}

			} else if (tipoU.equals("Artista")) {
				DtArtista dta = new DtArtista(apellido, contrasenia, correo, foto, nickname, nombre, seguidores, seguidos, fechaN, descripcion, biografia, url);
				try {
					agregarDtArtista(dta);
					request.setAttribute("mensaje", "Se ha ingresado correctamente el usuario "+nickname);
					rd = request.getRequestDispatcher("/notificacion.jsp");
					rd.forward(request, response);
				} catch (Exception e) {
					request.setAttribute("mensaje", "El usuario que intenta registrar ya existe");
					rd = request.getRequestDispatcher("/notificacion.jsp");
					rd.forward(request, response);
				}
			}

			sesion.removeAttribute("tipoDeUsuario");
			sesion.removeAttribute("nickname");
			sesion.removeAttribute("nombre");
			sesion.removeAttribute("apellido");
			sesion.removeAttribute("contrasenia");
			sesion.removeAttribute("correo");
			sesion.removeAttribute("fechaDeNacimiento");
			sesion.removeAttribute("imagen");
			sesion.removeAttribute("descripcion");
			sesion.removeAttribute("biografia");
			sesion.removeAttribute("url");

		} catch (Exception e) {
			//Guardo variables del formulario 
			sesion.setAttribute("tipoDeUsuario", tipoU);
			sesion.setAttribute("nickname", nickname);
			sesion.setAttribute("nombre", nombre);
			sesion.setAttribute("apellido", apellido);
			sesion.setAttribute("contrasenia", contrasenia);
			sesion.setAttribute("correo", correo);
			sesion.setAttribute("fechaDeNacimiento", fechaNac);
			sesion.setAttribute("imagen", imagen);
			sesion.setAttribute("descripcion", descripcion);
			sesion.setAttribute("biografia", biografia);
			sesion.setAttribute("url", url);
		}
	}

	public void agregarDtEspectador(DtEspectador dte) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		port.altaDtEspectador(dte);
	}

	public void agregarDtArtista(DtArtista dta) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		port.altaDtArtista(dta);
	}
}