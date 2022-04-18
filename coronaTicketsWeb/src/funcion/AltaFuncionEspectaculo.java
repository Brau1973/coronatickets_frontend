package funcion;

import java.io.DataInputStream;
import java.io.IOException;
import java.sql.Time;
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

import publicadores.ControladorFuncionPublish;
import publicadores.ControladorFuncionPublishService;
import publicadores.ControladorFuncionPublishServiceLocator;
import publicadores.DtFuncion;

@MultipartConfig
@WebServlet("/AltaFuncionEspectaculo")
public class AltaFuncionEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AltaFuncionEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nombre = request.getParameter("nomFuncion");
		String espectaculo = request.getParameter("nomEspectaculo");

		String hora = request.getParameter("horaFuncion");
		String[] parts = hora.split(":", 2);
		String part1 = parts[0];
		String part2 = parts[1];
		int hs = Integer.parseInt(part1);
		int min = Integer.parseInt(part2);
		Time horaInicio = new Time(hs, min, 0);

		String fechaFuncion = request.getParameter("fechaFuncion");
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
		Date fechaInicio = null;
		try {
			fechaInicio = formato.parse(fechaFuncion);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		fechaInicio.setHours(hs);
		fechaInicio.setMinutes(min);
		fechaInicio.setSeconds(0);
		Calendar fechaN = Calendar.getInstance();
		fechaN.setTime(fechaInicio);

		//String[] listArtistas = null;
		String[] artistasInvitados = request.getParameterValues("selArtista");

	//	if (artistasInvitados != null) {
			//	for (String artista : artistasInvitados) {
			//		listArtistas.add(artista);
			//	}
			//	for (int i = 0; i < artistasInvitados.length; ++i) {
			//		listArtistas[i].add(artistasInvitados[i]);
			//	}
	//	}

		Part imagenFuncion = request.getPart("imagen");
		int sizeimg = (int) imagenFuncion.getSize();
		byte[] foto = null;

		foto = new byte[sizeimg];
		DataInputStream dis = new DataInputStream(imagenFuncion.getInputStream());
		dis.readFully(foto);
		RequestDispatcher rd;

		Calendar fechaAlta = new GregorianCalendar();
		fechaAlta.setTime(new Date());
		
		DtFuncion dtFuncion = new DtFuncion(nombre, fechaN, null, fechaAlta, artistasInvitados);
		try {
			agregarFuncion(dtFuncion, espectaculo, foto);
			request.setAttribute("mensaje", "Se ha ingresado correctamente la funcion" + nombre);
			rd = request.getRequestDispatcher("/notificacion.jsp");

			session.removeAttribute("nomFuncion");
			session.removeAttribute("fechaFuncion");
			session.removeAttribute("horaFuncion");
			session.removeAttribute("nombreEspectaculoSelected");
			rd.forward(request, response);
			
		} catch (Exception e) {
			//guardo los campos del formulario en la sesion
			session.setAttribute("nomFuncion", nombre);
			session.setAttribute("fechaFuncion", fechaFuncion);
			session.setAttribute("horaFuncion", hora);
			session.setAttribute("nombreEspectaculoSelected", espectaculo);
			//	System.out.println(nombre);
			request.setAttribute("mensaje", "La funcion ya existe");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		}
	}

	public void agregarFuncion(DtFuncion dtFuncion, String nombreEspectaculo, byte[] foto) throws Exception {
		ControladorFuncionPublishService cps = new ControladorFuncionPublishServiceLocator();
		ControladorFuncionPublish port = cps.getControladorFuncionPublishPort();
		port.altaFuncion(dtFuncion, nombreEspectaculo, foto);
	}

}