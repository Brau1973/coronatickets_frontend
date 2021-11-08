package espectaculo;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import publicadores.Espectaculo;
import publicadores.Usuario;
import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;
import publicadores.DtEspectaculo;
import publicadores.DtPlataforma;

/**
 * Servlet implementation class AltaEspectaculo
 */
@WebServlet("/AltaEspectaculo")
public class AltaEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AltaEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/altaEspectaculo.jsp");
		//	IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String plataforma = request.getParameter("nomPlataforma");
		HttpSession sesion = request.getSession();
		Usuario dtUsuLogueado = (Usuario) sesion.getAttribute("user");
		String artista = dtUsuLogueado.getNickname(); // pasar artista con el q ingresó al sistema
		String nombre = request.getParameter("nomEspectaculo");
		String descripcion = request.getParameter("descEspectaculo");
		Integer duracion = Integer.valueOf(request.getParameter("durEspectaculo"));
		Integer espectadoresMin = Integer.valueOf(request.getParameter("espectadoresMin"));
		Integer espectadoresMax = Integer.valueOf(request.getParameter("espectadoresMax"));
		String url = request.getParameter("urlEspectaculo");
		Integer costo = Integer.valueOf(request.getParameter("costoEspectaculo"));
		Calendar fechaAlta = Calendar.getInstance();

		//ManejadorEspectaculo mE = ManejadorEspectaculo.getInstancia();
		//		if(mE.buscarEspectaculo(nombre) != null){
		//			request.setAttribute("mensaje", "Ya existe el espectaculo "+nombre);
		//		}else {
		DtEspectaculo dte = new DtEspectaculo();
		dte.setArtista(artista);
		dte.setPlataforma(plataforma);
		dte.setNombre(nombre);
		dte.setDescripcion(descripcion);
		dte.setDuracion(duracion);
		dte.setCantMin(espectadoresMin);
		dte.setCantMax(espectadoresMax);
		dte.setUrl(url);
		dte.setCosto(costo);
		dte.setRegistro(fechaAlta);

		/* dte = new publicadores.DtEspectaculo(); dte.setEnRambla(enRambla); dte.set(artista); dte.setNombre(nombre); dte.setTurno(turno); */
		try {

			altaEspectaculo(dte, plataforma);
			sesion.removeAttribute("plataformaSelected");
			sesion.removeAttribute("nombreEspectaculo");
			sesion.removeAttribute("descripcionEspectaculo");
			sesion.removeAttribute("duracionEspectaculo");
			sesion.removeAttribute("espectadoresMinEspectaculo");
			sesion.removeAttribute("espectadoresMaxEspectaculo");
			sesion.removeAttribute("urlEspectaculo");
			sesion.removeAttribute("costoEspectaculo");

			request.setAttribute("mensaje", "Se ha ingresado correctamente al sistema el espectculo " + nombre);
			rd = request.getRequestDispatcher("/notificacion.jsp");
		} catch (Exception e) {
			request.setAttribute("message", e.getMessage());

			//guardo los campos del formulario en la sesion
			sesion.setAttribute("plataformaSelected", plataforma);
			sesion.setAttribute("nombreEspectaculo", nombre);
			sesion.setAttribute("descripcionEspectaculo", descripcion);
			sesion.setAttribute("duracionEspectaculo", duracion);
			sesion.setAttribute("espectadoresMinEspectaculo", espectadoresMin);
			sesion.setAttribute("espectadoresMaxEspectaculo", espectadoresMax);
			sesion.setAttribute("urlEspectaculo", url);
			sesion.setAttribute("costoEspectaculo", costo);
			//e.printStackTrace();
		}
		//}
		rd.forward(request, response);
	}

	// OPERACIÓN CONSUMIDA
	public void altaEspectaculo(DtEspectaculo dte, String plataforma) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		port.altaEspectaculo(dte, plataforma);
	}
}