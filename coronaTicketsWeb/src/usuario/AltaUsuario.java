package usuario;

import java.io.DataInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.Artista;
import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtArtista;
import publicadores.DtEspectador;

@MultipartConfig
@WebServlet("/AltaUsuario")
public class AltaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AltaUsuario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
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

		Calendar fechaNacimiento = new GregorianCalendar();
		
		Artista dta = null;
		HttpSession sesion = request.getSession();

		Part imagenFuncion = request.getPart("imagen");
		int sizeimg = (int) imagenFuncion.getSize();
		byte[] foto = null;
		foto = new byte[sizeimg];
		DataInputStream dis = new DataInputStream(imagenFuncion.getInputStream());
		dis.readFully(foto);
		RequestDispatcher rd;

		try {
			// 	Date fecha = new SimpleDateFormat("dd/MM/yyyy").parse(fechaNac);
			//	SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
			//	Date fechaNacimiento = null;
			//	try {
			//		fechaNacimiento = formato.parse(fechaNac);
			//	} catch (ParseException e1) {
			//		e1.printStackTrace();
			//	}

			if (tipoU.equals("Espectador")) {
				System.out.println("aca estoy" + tipoU);
				fechaNacimiento.setTime(new Date());
//				dte = new DtEspectador();
//				dte.setNickname(nickname);
//				dte.setNombre(nombre);
//				dte.setApellido(apellido);
//				dte.setEmail(correo);
//				dte.setFNacimiento(fechaNacimiento);
//				dte.setSeguidos(null);
//				dte.setSeguidores(null);
//				dte.setContrasenia(contrasenia);
//				dte.setImagen(foto);
				DtEspectador dte = new DtEspectador(nickname, nombre, apellido, correo, fechaNacimiento, null, null, contrasenia, foto);
				
				
				try {
					agregarDtEspectador(dte);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (tipoU.equals("Artista")) {
				fechaNacimiento.setTime(new Date());
				dta = new Artista();
				dta.setNickname(nickname);
				dta.setNombre(nombre);
				dta.setApellido(apellido);
				dta.setEmail(correo);
				dta.setFNacimiento(fechaNacimiento);
				dta.setContrasenia(contrasenia);
				dta.setImagen(foto);
				dta.setSeguidos(null);
				dta.setSeguidores(null);
				dta.setDescripcion(descripcion);
				dta.setBiografia(biografia);
				dta.setLink(url);
				try {
					agregarDtArtista(dta);
				} catch (Exception e) {
					e.printStackTrace();
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
			request.setAttribute("message", "Se ha ingresado correctamente al sistema, el usuario");
			rd = request.getRequestDispatcher("/index.jsp");

		} catch (Exception e) {
			request.setAttribute("message", e.getMessage());
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
			rd = request.getRequestDispatcher("/altaUsuario.jsp");
		}
		rd.forward(request, response);
	}

	public void agregarDtEspectador(DtEspectador dte) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		port.altaDtEspectador(dte);
	}

	public void agregarDtArtista(Artista dta) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		DtArtista dtArtista= null;
		dtArtista=new DtArtista();
		dtArtista.setNickname(dta.getNickname());
		dtArtista.setNombre(dta.getNombre());
		dtArtista.setApellido(dta.getApellido());
		dtArtista.setContrasenia(dta.getContrasenia());
		dtArtista.setEmail(dta.getEmail());
		dtArtista.setFNacimiento(dta.getFNacimiento());
		dtArtista.setImagen(dta.getImagen());
		dtArtista.setDescripcion(dta.getDescripcion());
		dtArtista.setBiografia(dta.getBiografia());
		dtArtista.setLink(dta.getLink());
		port.altaDtArtista(dtArtista);
	}

}